<#
Example PowerShell scripts for the Pure Storage PowerShell SDK
  This contains the step-by-step example script that follows along with the Quick Start Guide (https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell) as well as some further examples to help you create your own scripts using the SDK.

These examples are presented AS-IS. No warranties expressed or implied by Pure Storage or the creators.

: REVISION HISTORY
:: 04.23.2021 - Fixed the -Credential parameter from plural to singular
:: 03.10.2021 - Added extended script and altered text for clarity. [mnelson]
::

: CONTRIBUTING AUTHORS
:: Barkz, Mike Nelson, Julian Cates, Robert Quimbey --  @purestorage.com
#>

###START

# Getting Started
#################
# Basic PowerShell routines to see the cmdlets available, updating Help, and getting various degrees of Help
Get-Module -ListAvailable
$env:PSModulePath

# All of the available cmdlets in the module
Get-Command -Module PureStoragePowerShellSDK2

# How many cmdlets are available in the module
(Get-Command -Module PureStoragePowerShellSDK2).Count

# Periodically, the Help should be updated for all PowerShell modules. This does require PowerShell be "Run as Administrator".
Update-Help -Module PureStoragePowerShellSDK2

# All the variations of Help available for cmdlets
Get-Help New-Pfa2Array
Get-Help New-Pfa2Array -Full
Get-Help New-Pfa2Array -Detailed
Get-Help New-Pfa2Array -Examples

## Array Authentication
#######################
<#
Connecting to the FlashArray

There are a few ways to connect to the FlashArray - via API Tokens or OAuth2. OAuth2 is more secure, but also a bit more complex.
To see all of the ways to authenticate to an array with the SDK, inclusing with OAuth2, please see this article -
  https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell/How-To%3A_Connect_to_FlashArray_with_SDK_v12x

Note: OAuth2 is the only allowed method of authentication with Purity API versions 2.0 and 2.1.
Note: Not all cmdlets or parameters are available with API versions 2.0 and 2.1. For information, please refer to the SDKv2 and API Version Matrix in the Github repository.

To view all of the available API versions on your array, use this URL, substituting your array FQDN or IP address:
https://<FQDN or IP Address of Array>/api/api_version
#>

# For these examples, we will do a simple API Token exchange.
$Creds = Get-Credential

# Change the EndPopint IP/FQDN to match your array
$FlashArray = Connect-Pfa2Array -EndPoint 192.0.0.1 -Credential $Creds -IgnoreCertificateError

# Once connected, run a few commands to verify connectivity
Get-Pfa2Controller -Array $FlashArray
$Controllers = Get-Pfa2Controller -Array $FlashArray
$Controllers

## Working with Volumes
#######################

# Create a new volume that is 200GB in size and just to see what's happening, turn on the -Verbose parameter
New-Pfa2Volume -Array $FlashArray -Name "SDKv2-Sample" -Provisioned 214748364800 -Verbose

# Create 5 volumes, all 200GB in size
ForEach ($i in 1..5) { New-Pfa2Volume -Array $FlashArray -Name "SDKv2-TestSample-$i" -Provisioned 214748364800 }

# View the volumes after creation
Get-Pfa2Volume -Array $FlashArray -Name "SDKv2-TestSample-3" | Format-Table -Autosize
Get-Pfa2Volume -Array $FlashArray | Where-Object { $_.name -like "SDKv2-TestSample*" } | Format-Table -AutoSize

# Change the name of a volume
Update-Pfa2Volume -Array $FlashArray -Name "SDKv2-TestSample-5" -VolumeName "SDKv2-TestSample-500"

# Create a volume using the CLI via SSH
$CommandText = "purevol create --size 10G DEMO-VOL10"
Invoke-Pfa2CLICommand -EndPoint $ArrayEndpoint -Username $ArrayUsername -Password $ArrayPassword -CommandText $CommandText

# Use PowerShell built-in math functionaility to do data size conversions to bytes. You can see this from the PowerShell prompt by simply typing "1tb".
<# This allows for some cmdlets that have a -Provisioned or -Size type parameter to use the simplier value and have it converted to the required value automagically.
   Example: The New-Pfa2Volume cmdlet requires a -Provisioned parameter value that is in bytes. By specifying the conversion value, it is automaticallyconverted to bytes by PowerShell.
#>
New-Pfa2Volume -Name DemoVol -Provisioned 100gb
<# The result is:
Space                   : class Space {
                            TotalProvisioned: 107374182400
                          }
#>

## Volume and Host Connections
##############################

# Define some (fake) WWNs and create a host
$wwn=@("10:00:00:00:00:00:11:11","10:00:00:00:00:00:12:12")
New-Pfa2Host -Array $FlashArray -Name "SDKv2-host" -WwnList $wwn

# Do the same for iSCSI Iqns
$iqn = @("iqn.1998-01.com.sample1.iscsi", "iqn.1998-01.com.sample2.iscsi")
New-Pfa2Host -Array $FlashArray -Name "SDK2-IQNS-host" -Iqns $iqn

# Create a new Host Group
New-Pfa2HostGroup -Array $FlashArray -Name "SDKv2-HostGroup"

# Add a host to the group
New-Pfa2HostGroupHost -GroupNames "SDKv2-HostGroup" -MemberNames "SDKv1-HOST1"

# Retrieve a volume and connect it to the host & host group
Get-Pfa2Volume -Array $FlashArray | Where-Object { $_.name -like "SDK*" } | Format-Table -AutoSize
New-Pfa2Connection -Array $FlashArray -VolumeNames "SDKv2-Sample-2" -HostNames "SDKv2-host"
New-Pfa2Connection -Array $FlashArray -VolumeNames "SDKv2-Sample-2" -HostGroupNames "SDKv2-HostGroup"

# Remove the volume from the host group
Remove-Pfa2Connection -Array $FlashArray -VolumeNames "SDKv2-Sample-2" -HostGroupNames "SDKv2-HostGroup"

## FlashRecover Snapshots
#########################

# Create snapshots, view them, and copy a snapshot to a new volume
New-Pfa2VolumeSnapshot -Array $FlashArray -SourceNames "SDKv2-sample-1", "SDKv2-sample-2" -Suffix "EXAMPLE"
$snap = Get-Pfa2VolumeSnapshot -Name "SDKv2-sample-1.EXAMPLE"
$src = New-Pfa2ReferenceObject -Id $snap.Id -Name $snap.Name
New-Pfa2Volume -Name volumecopy -Source $src

## Protection Groups
####################

# Create a Protection group
New-Pfa2ProtectionGroup -Array $FlashArray -Name "SDKv2-PGROUP"

# Create a new volume
New-Pfa2Volume -Name "SDKv2-VOL1" -Provisioned 10485760

# Add the volume to the Protection Group
New-Pfa2ProtectionGroupVolume -GroupNames "SDK-PGROUP" -MemberNames "SDK-VOL1"

# Snapshot the volume
New-Pfa2ProtectionGroupSnapshot -Array $FlashArray -SourceNames "SDK-PGROUP" -Suffix "EXAMPLE"

# Set the snapshot schedule for the Protection Group
Get-Pfa2ProtectionGroupSnapshot -Array $FlashArray -Name "SDK-PGROUP"
$schedule = Get-Pfa2ProtectionGroup -Array $FlashArray -Name "SDK-PGROUP"
$schedule.SnapshotSchedule
$snapschedule=New-Pfa2SnapshotScheduleObject -At 7200000 -Enabled $false -Frequency 259200000
Update-Pfa2ProtectionGroup -Name "SDK-PGROUP" -SnapshotSchedule $snapschedule

# Remove the Protection Group
Remove-Pfa2VolumeProtectionGroup -Array $FlashArray -MemberNames "SDK-VOL1" -GroupNames "SDK-PGROUP"

# Add a host to a Protection Group
New-Pfa2ProtectionGroupHost -Array $FlashArray -GroupNames "SDK-PGROUP" -Membernames "SDK-HOST"

# Create a snapshot
New-Pfa2ProtectionGroupSnapshot -Array $FlashArray -SourceNames "SDK-PGROUP"

# Remove the host
Remove-Pfa2ProtectionGroupHost -Array $FlashArray -MemberNames "SDK-HOST" -GroupNames "SDK-PGROUP"

# Create a new Host Protection Group
New-Pfa2HostGroupsProtectionGroup -Array $FlashArray -MemberNames "SDK-HOSTGROUP" -GroupNames "SDK-PGROUP"

# Create a snapshot of the group
New-Pfa2ProtectionGroupSnapshot -Array $FlashArray -SourceNames "SDK-PGROUP"

# Alternative via the CLI with ReplicateNow
$CommandText = "purepgroup snap --replicate-now SDK-PGROUP"
Invoke-Pfa2CLICommand -EndPoint array1 -Credential (Get-Credential) -IgnoreCertificateError -CommandText $CommandText

## Performance and Space Metrics
################################
# These are just a small sample of many performance and metric cmdlets available in the SDK.

# This example will retrieve all of the cmdlets that have Performance in the name, and then run a few Array performance commands outputting in different formats
Get-Command -Module PureStoragePowerShellSDK2 *Performance*
Get-Pfa2ArrayPerformance -Array $FlashArray -endtime "2020-08-07T01:00:00Z" -starttime "2020-08-06T01:00:00Z" -resolution 28800000
Get-Pfa2ArrayPerformance -Array $FlashArray -endtime "2020-08-07T01:00:00Z" -starttime "2020-08-06T01:00:00Z" -resolution 28800000 | Format-Table –AutoSize
Get-Pfa2ArrayPerformance -Array $FlashArray -endtime "2020-08-07T01:00:00Z" -starttime "2020-08-06T01:00:00Z" -resolution 28800000 | Export-Csv -Path "C:\temp\test.csv"
Get-Pfa2ArraySpace -Array $FlashArray -endtime "2020-08-07T01:00:00Z" -starttime "2020-08-06T01:00:00Z" -resolution 28800000

## Logging
##########

# Start SDK logging to a file calles session.log in the current folder
Set-Pfa2Logging -LogFilename session.log

# You could now open a new PowerShell session and use the Get-Content cmdlet to view that file as it is written to
Get-Content session.log -Wait


## Pipeline examples
####################

# Create a PowerShell array of authenticated FlashArray objects and perform a command against all of the objects in series
$flasharray @()
$flasharray += Connect-Pfa2Array -Endpoint array1 -Credential (Get-Credential) -IgnoreCertificateError
$flasharray += Connect-Pfa2Array -Endpoint array2 -Credential (Get-Credential) -IgnoreCertificateError
$flasharray += Connect-Pfa2Array -Endpoint array3 -Credential (Get-Credential) -IgnoreCertificateError
$flasharray += Connect-Pfa2Array -Endpoint array4 -Credential (Get-Credential) -IgnoreCertificateError
Get-Pfa2Volume -Array $flasharray

# Remove all of existing hosts
Get-Pfa2Host -Array $FlashArray | Remove-Pfa2Host -Array $FlashArray

# Remove all hosts containing "test" in name
(Get-Pfa2host -Array $FlashArray) | Where-Object { $_.name -like "*test*" } | Remove-Pfa2Host -Array $FlashArray

# Filter hosts and remove. Change name as fit.
Get-Pfa2Host -Array $FlashArray | Where-Object { $_.name -eq "a-test1" } | Remove-Pfa2Host -Array $FlashArray

## Retrive formatted Volume info
Get-Pfa2Volumes -Array $FlashArray | Format-Table -AutoSize

# Create volumes
$VolName | New-Pfa2Volume -Array $FlashArray -Provisioned $Size

# View the created volumes
$Volume = Get-Pfa2Volume -Array $FlashArray | Where-Object { $_.Name -like $VolName }
return $Volume
Get-Pfa2Volume -Array $FlashArray | Where-Object { $_.Name -like $VolName } -Destroyed $False | Update-Pfa2Volume -Array $FlashArray -Destroyed $True

# Delete All Volumes at once ***Dangerous***
Get-Pfa2Volume | Update-Pfa2Volume -Destroyed $True

# Destroy (delete) volumes
Get-Pfa2Volume -Array $FlashArray -Filter -name="vol1" -Destroyed $False | Update-Pfa2Volume -Array $FlashArray -Destroyed $True

# Query volumes to test for Destroy success
$Volume = Get-Pfa2Volume -Array $FlashArray | Where-Object { $_.Name -like $VolName } -Destroyed $True

# Eradicate all volumes that are flagged as "Destroyed"
Get-Pfa2Volume -Array $FlashArray -Destroyed $True | Remove-Pfa2Volume -Array $FlashArray -Eradicate -Confirm:$false

# Pull volume names from the Volume group, create snapshots, and display created snapshots
Get-Pfa2Volume -Array $FlashArray | Where-Object { $_.VolumeGroup.Name -eq "demo1" } | ForEach-Object { New-Pfa2VolumeSnapshot -SourceNames $_.Name -Suffix "JustADemo" }
Get-Pfa2VolumeSnapshot -Array $FlashArray | Where-Object { $_.Suffix -eq "JustADemo" } | Format-Table -Property Name

## Miscellaneous
################

# Use Invoke method to pass CLI command
$CommandText = "purevol create --size 10G SDK-volume-name"
Invoke-Pfa2CLICommand -EndPoint $FlashArray -Username $FlashArrayUsername -Password $FlashArrayPassword -CommandText $CommandText

# Get snapshot information, create reference pbject, & create new volume from snapshot
$snap = Get-Pfa2VolumeSnapshot -Name test1
$src = New-Pfa2ReferenceObject -Id $snap.Id -Name $snap.Name
New-Pfa2Volume -Name volumecopy -Source $src

# Query volumes to test for eradication success
$Volume = Get-Pfa2Volume -Array $FlashArray -Destroyed $True


### END
