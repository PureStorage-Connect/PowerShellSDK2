# Pure Storage PowerShell SDK for FlashArray 2.16 Release Notes

The Pure Storage PowerShell SDK for FlashArray provides integration with the Purity Operating Environment and the FlashArray. It provides the functionalities of Purity's REST API as PowerShell cmdlets.
<br>
<br>
## RELEASE NOTES
Get the latest information about this SDK:
* [Microsoft Platform Guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/bbb_Microsoft_Integration_Releases/Pure_Storage_PowerShell_SDK)
* [Repository Release Notes](https://github.com/PureStorage-Connect/PowerShellSDK2/blob/main/release_notes.md)
<br>
<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

## RELEASE REQUIREMENTS AND COMPATIBILITY
* This release requires at least .NET Core 2.1 (https://dotnet.microsoft.com/download/dotnet-core/2.1/).
* This release is compatible with Purity FlashArrays that support Pure Storage REST API 2.0 to 2.16 inclusive.
* This release is also compatible to be installed side by side with Pure Storage PowerShell SDK 1.x.
* This release requires a 64-bit operating system.
* This release requires the following PowerShell versions:

   | OS | PowerShell Version | Note |
   | ----------- | ----------- | ----------- |
   | Windows 10 | 5.1.17134.858 | |
   | Windows 11| 5.1.22000.832 | |
   | Windows 2022 | 5.1.20348.1 | |
   | Windows Server 2019 | 5.1.17763.1007 | |
   | Windows Server 2016 | 5.1.17763.1007 | |
   | Windows Server 2012 R2 | 5.1.14393.3471 | |
   | macOS | 7.0.1 | Not fully tested |
   | Linux | 7.0.1 | Not fully tested |

<br>
<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

## INSTALLATION AND REMOVAL
The installation can be done using the following methods.

### POWERSHELL GALLERY
The Pure Storage FlashArray PowerShell SDK 2.16 can be installed via the PowerShell Gallery by using the Install-Module cmdlet: "Install-Module -Name PureStoragePowerShellSDK2"
    See https://www.powershellgallery.com/ for more details on how to discover resources on the PowerShell Gallery.

### INSTALLER MSI
To install the Pure Storage PowerShell SDK 2.16 via the MSI installer, extract and run PureStoragePowerShellSDK2Installer.msi, and follow the instructions. The Administrator privilege is required to perform the installation.
    To verify the installation, run "Get-Command -Module PureStoragePowerShellSDK2" in a new PowerShell prompt. The newly installed cmdlets should be listed.

To remove the Pure Storage PowerShell SDK 2 module, perform the following based on the installation method used.
Installed via the PowerShell Gallery: Use the "Remove-Module -Name PureStoragePowerShellSDK2" command.
Installed via the MSI: The Pure Storage PowerShell SDK 2.16 MSI can be uninstalled from "Programs and Features" of the Control Panel.

<br>
<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

## GET-HELP
Download the detailed help using the command:

```powershell
Update-Help -Module PureStoragePowerShellSDK2
```
Get help using the the `Get-Help` cmdlet. Below is an example of getting help for the ```Get-Pfa2Volume`:

```powershell
Get-Help -Name Get-Pfa2Volume
```
To find what about topics are available use the following:

```powershell
Get-Help -Name About_Pfa2*
```

<br>
<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

## KNOWN ISSUES IN THIS RELEASE
<br>

### New-Pfa2Kmip
There is a limitation of the cmdlet New-Pfa2Kmip. When creating a new KMIP server, a certificate is required. The mandatory parameter -Certificate accepts the value of a certificate name instead of certificate content. The proper workflow to create a KMIP server is:

1. Import a certificate and assign a name for the certificate
2. Use a certificate name when creating KMIP server

However, the Pure Storage FlashArray PowerShell SDK 2.16 does not provide the functionality of importing a certificate (as shown in Step 1). The limitation also applies to the Update-Pfa2Kmip cmdlet when a user wants to update a certificate of a specific KMIP server.

The alternative way to realize Step 1 is to use the CLI to import the certificate. Certificate configuration is performed through the GUI (Settings > System) and CLI (purecert command).For information about the `purecert` CLI command refer to the [FlashArray CLI Reference Guide](https://support.purestorage.com/FlashArray/PurityFA/FlashArray_User_Guide)≥

The Pure Storage FlashArray PowerShell SDK 2.16 also provides a way to invoke a CLI command. Other KMIP related cmdlets like Get-Pfa2Kmip, Delete-Pfa2Kmip, and Get-Pfa2KmipTest do not have the limitation mentioned above.

<br>
<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

## RESOURCES
* Microsoft Platform Guide - PowerShell SDK
* PureStorage-Connect GitHub Repository - https://github.com/PureStorage-Connect/PowerShellSDK2
* PureCode Slack Team - https://codeinvite.purestorage.com/
* Pure Storage Code Website - https://code.purestorage.com

<br>
<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

## RELEASE 2.16

Release 2.16 adds more than 150 cmdlets.
<br>

New-Pfa2FileSystem  
Update-Pfa2FileSystem  
Remove-Pfa2FileSystem  
Get-Pfa2HostPerformanceBalance  
Get-Pfa2NetworkInterface  
New-Pfa2NetworkInterface  
Update-Pfa2NetworkInterface  
Remove-Pfa2NetworkInterface  
Get-Pfa2NetworkInterfacePerformance  
Get-Pfa2NetworkInterfacesPortDetails  
Get-Pfa2Policy  
Get-Pfa2PolicyMember  
Get-Pfa2PolicyNfs  
New-Pfa2PolicyNfs  
Update-Pfa2PolicyNfs  
Remove-Pfa2PolicyNfs  
Get-Pfa2PolicyNfsClientRule  
New-Pfa2PolicyNfsClientRule  
Remove-Pfa2PolicyNfsClientRule  
Get-Pfa2PolicyNfsMember  
New-Pfa2PolicyNfsMember  
Remove-Pfa2PolicyNfsMember  
Get-Pfa2PolicyQuota  
New-Pfa2PolicyQuota  
Update-Pfa2PolicyQuota  
Remove-Pfa2PolicyQuota  
Get-Pfa2PolicyQuotaMember  
New-Pfa2PolicyQuotaMember  
Remove-Pfa2PolicyQuotaMember  
Get-Pfa2PolicyQuotaRule  
New-Pfa2PolicyQuotaRule  
Update-Pfa2PolicyQuotaRule  
Remove-Pfa2PolicyQuotaRule  
Get-Pfa2PolicySmb  
New-Pfa2PolicySmb  
Update-Pfa2PolicySmb  
Remove-Pfa2PolicySmb  
Get-Pfa2PolicySmbClientRule  
New-Pfa2PolicySmbClientRule  
Remove-Pfa2PolicySmbClientRule  
Get-Pfa2PolicySmbMember  
New-Pfa2PolicySmbMember  
Remove-Pfa2PolicySmbMember  
Get-Pfa2PolicySnapshot  
New-Pfa2PolicySnapshot  
Update-Pfa2PolicySnapshot  
Remove-Pfa2PolicySnapshot  
Get-Pfa2PolicySnapshotMember  
New-Pfa2PolicySnapshotMember  
Remove-Pfa2PolicySnapshotMember  
Get-Pfa2PolicySnapshotRule  
New-Pfa2PolicySnapshotRule  
Remove-Pfa2PolicySnapshotRule  
New-Pfa2RemoteProtectionGroupSnapshot  
New-Pfa2RemoteVolumeSnapshot  
Update-Pfa2RemoteVolumeSnapshot  
Remove-Pfa2RemoteVolumeSnapshot  
Get-Pfa2Session  
Get-Pfa2SmtpServer  
Update-Pfa2SmtpServer  
Get-Pfa2SnmpAgent  
Update-Pfa2SnmpAgent  
Get-Pfa2SnmpAgentMib  
Get-Pfa2SnmpManager  
New-Pfa2SnmpManager  
Update-Pfa2SnmpManager  
Remove-Pfa2SnmpManager  
Get-Pfa2SnmpManagerTest  
New-Pfa2Software  
Remove-Pfa2Software  
Get-Pfa2SoftwareBundle  
New-Pfa2SoftwareBundle  
Get-Pfa2SoftwareCheck  
New-Pfa2SoftwareCheck  
Remove-Pfa2SoftwareCheck  
New-Pfa2SoftwareInstallation  
Update-Pfa2SoftwareInstallation  
Get-Pfa2SoftwareVersion  
Get-Pfa2SsoSaml2  
New-Pfa2SsoSaml2  
Update-Pfa2SsoSaml2  
Remove-Pfa2SsoSaml2  
Get-Pfa2SsoSaml2Test  
Update-Pfa2SsoSaml2Test  
Get-Pfa2SyslogServer  
New-Pfa2SyslogServer  
Update-Pfa2SyslogServer  
Remove-Pfa2SyslogServer  
Get-Pfa2SyslogServerSetting  
Update-Pfa2SyslogServerSetting  
Get-Pfa2SyslogServerTest  
Get-Pfa2VirtualMachine  
New-Pfa2VirtualMachine  
Update-Pfa2VirtualMachine  
Get-Pfa2VirtualMachineSnapshots  
Get-Pfa2VolumeDiff 

<br>
<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->
<br>

## BACKWARDS COMPATIBILITY
Cmdlets with Reference parameter types have been changed to make them easier to use. The reference parameters have been replaced with 1 or more direct parameters.

Below are the cmdlets and the parameters that have been replaced.

| Cmdlet | Parameter(s) | 
| ----------- | ----------- |
| New-Pfa2Connection | ProtocolEndpoint |
| New-Pfa2Host | Chap, PreferredArrays |
| New-Pfa2Offload | AmazonS3, Azure, GoogleCloud, Nfs |
| New-Pfa2Pod | FailoverPreferences, Source |
| New-Pfa2Volume | Qos, Source |
| New-Pfa2VolumeGroup | Qos |
| Set-Pfa2VolumeSnapshotTagsBatch | Tag |
| Set-Pfa2VolumeTagBatch | Tag |
| Update-Pfa2ArrayEula | Signature |
| Update-Pfa2DirectoryService | Management |
| Update-Pfa2Host | Chap, PreferredArrays |
| Update-Pfa2Pod | FailoverPreferences |
| Update-Pfa2ProtectionGroup | ReplicationScheduleBlackout, SnapshotSchedule, SourceRetention, TargetRetention |
| Update-Pfa2RemoteProtectionGroup | TargetRetention |
| Update-Pfa2Volume | Pod, Qos, VolumeGroup |
| Update-Pfa2VolumeGroup | Qos |
| | |

For more details use:

```powershell
Get-Help About_Pfa2ReferenceParameters
```
<br>
<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

## PERFORMANCE TESTING
No performance testing was done for this release.

<br>
<!-- wp:separator -->
<hr class="wp-block-separator"/>
<!-- /wp:separator -->

## OPEN SOURCE LICENSES
Please review [licenses.txt](https://github.com/PureStorage-Connect/PowerShellSDK2/blob/master/licenses.txt) in the repository.

