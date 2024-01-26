# Pure Storage PowerShell SDK for FlashArray 2.26.63 Release Notes

The Pure Storage PowerShell SDK for FlashArray provides integration with the Purity Operating Environment and the FlashArray.  
It provides the functionalities of Purity's REST API as PowerShell cmdlets.  

## RELEASE NOTES
Get the latest information about this SDK online at: https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/bbb_Microsoft_Integration_Releases/Pure_Storage_PowerShell_SDK

##  RELEASE REQUIREMENTS AND COMPATIBILITY

This release requires at least .NET Core 2.1 (https://dotnet.microsoft.com/download/dotnet-core/2.1/).  
This release is compatible with Purity FlashArrays that support Pure Storage REST API 2.0 to 2.26 inclusive.  
This release is also compatible to be installed side by side with Pure Storage PowerShell SDK 1.x.  
This release requires a 64-bit operating system.  
This release requires the following PowerShell versions:  
| OS                     | PowerShell Version |
|------------------------|---------------|
| Windows 10             | 5.1.17134.858 |
| Windows Server 2019    | 5.1.17763.1007 |
| Windows Server 2016    | 5.1.14393.3471 |
| Windows Server 2012R2  | 5.1.14409.1018 |
| *Mac OS                | 7.0.1 |
| *Linux                 | 7.0.1 |
* Not fully tested.

## INSTALLATION AND REMOVAL

### POWERSHELL GALLERY
The Pure Storage FlashArray PowerShell SDK 2.26 can be installed via the PowerShell Gallery by using the Install-Module cmdlet:  
```
Install-Module -Name PureStoragePowerShellSDK2
```
See https://www.powershellgallery.com/ for more details on how to discover resources on the PowerShell Gallery.  

### Note: THE INSTALLER MSI HAS BEEN DEPRECATED WITH THIS RELEASE

To remove the Pure Storage PowerShell SDK 2 module, perform the following.  
```
Remove-Module -Name PureStoragePowerShellSDK2
```  

## CMDLET HELP
Download the detailed help using the command `Update-Help -Module PureStoragePowerShellSDK2`.  
Get help using `Get-Help -Name Get-Pfa2Volume` for cmdlet Get-Pfa2Volume.  
To find what about topics are available: `Get-Help -Name About_Pfa2*`  

## KNOWN ISSUES IN THIS RELEASE
None

## RESOURCES
PureStorage-Connect GitHub Repository - https://github.com/PureStorage-Connect/PowerShellSDK2  
PureCode Slack Team - https://codeinvite.purestorage.com/  
Pure Storage Code Website - https://code.purestorage.com  

## RELEASE CHANGES

On this releases we added the following 22 new cmdlet(s):
	Remove-Pfa2DirectoryServiceLocalGroupMember
	New-Pfa2DirectoryLockNlmReclamation
	New-Pfa2Files
	New-Pfa2ProtectionGroupSnapshotReplica
	New-Pfa2ProtectionGroupSnapshotTest
	New-Pfa2RemoteProtectionGroupSnapshotTest
	New-Pfa2SoftwarePatch
	Get-Pfa2Subscription
	Get-Pfa2SubscriptionAsset
	Get-Pfa2Vchost
	New-Pfa2Vchost
	Update-Pfa2Vchost
	Remove-Pfa2Vchost
	Get-Pfa2VchostCertificate
	New-Pfa2VchostCertificate
	Update-Pfa2VchostCertificate
	Remove-Pfa2VchostCertificate
	Get-Pfa2VchostEndpoint
	New-Pfa2VchostEndpoint
	Update-Pfa2VchostEndpoint
	Remove-Pfa2VchostEndpoint
	New-Pfa2VolumeSnapshotTest

The following 47 cmdlet(s) have new parameters:
	'Update-Pfa2Array' have the following new parameter(s): [NtpSymmetricKey, EradicationConfigDisabledDelay, EradicationConfigEnabledDelay]
	'Update-Pfa2ContainerDefaultProtection' have the following new parameter(s): [DefaultProtectionsId]
	'Get-Pfa2HostGroupProtectionGroup' have the following new parameter(s): [GroupId]
	'New-Pfa2HostGroupProtectionGroup' have the following new parameter(s): [GroupId]
	'Remove-Pfa2HostGroupProtectionGroup' have the following new parameter(s): [GroupId]
	'Get-Pfa2HostProtectionGroup' have the following new parameter(s): [GroupId]
	'New-Pfa2HostProtectionGroup' have the following new parameter(s): [GroupId]
	'Remove-Pfa2HostProtectionGroup' have the following new parameter(s): [GroupId]
	'New-Pfa2Offload' have the following new parameter(s): [AzureProfile, GoogleCloudAuthRegion, GoogleCloudProfile, NfsProfile, AmazonS3AuthRegion, AmazonS3Profile]
	'Update-Pfa2PolicyNfs' have the following new parameter(s): [NfsVersion]
	'New-Pfa2PolicyNfsClientRule' have the following new parameter(s): [RulesNfsVersion]
	'Get-Pfa2ProtectionGroup' have the following new parameter(s): [Id]
	'New-Pfa2ProtectionGroup' have the following new parameter(s): [SourceId]
	'Update-Pfa2ProtectionGroup' have the following new parameter(s): [Id]
	'Remove-Pfa2ProtectionGroup' have the following new parameter(s): [Id]
	'Get-Pfa2ProtectionGroupHost' have the following new parameter(s): [GroupId]
	'New-Pfa2ProtectionGroupHost' have the following new parameter(s): [GroupId]
	'Remove-Pfa2ProtectionGroupHost' have the following new parameter(s): [GroupId]
	'Get-Pfa2ProtectionGroupHostGroup' have the following new parameter(s): [GroupId]
	'New-Pfa2ProtectionGroupHostGroup' have the following new parameter(s): [GroupId]
	'Remove-Pfa2ProtectionGroupHostGroup' have the following new parameter(s): [GroupId]
	'Get-Pfa2ProtectionGroupPerformanceReplication' have the following new parameter(s): [Id]
	'Get-Pfa2ProtectionGroupPerformanceReplicationByArray' have the following new parameter(s): [Id]
	'Get-Pfa2ProtectionGroupSpace' have the following new parameter(s): [Id]
	'Get-Pfa2ProtectionGroupTarget' have the following new parameter(s): [GroupId]
	'New-Pfa2ProtectionGroupTarget' have the following new parameter(s): [GroupId]
	'Update-Pfa2ProtectionGroupTarget' have the following new parameter(s): [GroupId]
	'Remove-Pfa2ProtectionGroupTarget' have the following new parameter(s): [GroupId]
	'Get-Pfa2ProtectionGroupVolume' have the following new parameter(s): [GroupId]
	'New-Pfa2ProtectionGroupVolume' have the following new parameter(s): [GroupId]
	'Remove-Pfa2ProtectionGroupVolume' have the following new parameter(s): [GroupId]
	'Get-Pfa2ProtectionGroupSnapshot' have the following new parameter(s): [Id, SourceId]
	'New-Pfa2ProtectionGroupSnapshot' have the following new parameter(s): [AllowThrottle, SourceId]
	'Update-Pfa2ProtectionGroupSnapshot' have the following new parameter(s): [Id]
	'Remove-Pfa2ProtectionGroupSnapshot' have the following new parameter(s): [Id]
	'Get-Pfa2ProtectionGroupSnapshotTransfer' have the following new parameter(s): [Id, SourceId]
	'Get-Pfa2RemoteProtectionGroupSnapshot' have the following new parameter(s): [Id, SourceId]
	'New-Pfa2RemoteProtectionGroupSnapshot' have the following new parameter(s): [AllowThrottle, SourceId]
	'Update-Pfa2RemoteProtectionGroupSnapshot' have the following new parameter(s): [Id]
	'Remove-Pfa2RemoteProtectionGroupSnapshot' have the following new parameter(s): [Id]
	'Get-Pfa2RemoteProtectionGroupSnapshotTransfer' have the following new parameter(s): [Id, SourceId]
	'New-Pfa2Volume' have the following new parameter(s): [AddToProtectionGroupIds]
	'Update-Pfa2Volume' have the following new parameter(s): [AddToProtectionGroupIds, RemoveFromProtectionGroupIds]
	'Get-Pfa2VolumeProtectionGroup' have the following new parameter(s): [GroupId]
	'New-Pfa2VolumeProtectionGroup' have the following new parameter(s): [GroupId]
	'Remove-Pfa2VolumeProtectionGroup' have the following new parameter(s): [GroupId]
	'New-Pfa2VolumeSnapshot' have the following new parameter(s): [AllowThrottle]

The following 1 cmdlet(s) had parameters dropped:
	'Update-Pfa2SnmpAgent' dropped the following parameter(s): [SnmpAgentName]

## BACKWARDS COMPATIBILITY
From 2.24 release:
Invalid parameters were removed from some cmdlets. Those parameters were not actually being used, or were duplicated, and can simply be dropped.  
The list of removed parameters include the following:  

    - Update-Pfa2Admin: ApiTokenCreatedAt;ApiTokenExpiresAt;ApiTokenToken  
    - Update-Pfa2Alert: Ids  
    - Update-Pfa2Array: EncryptionModuleVersion;SpaceDataReduction;SpaceShared;SpaceSnapshots;SpaceSystem;SpaceThinProvisioning;SpaceTotalPhysical;SpaceTotalProvisioned;SpaceTotalReduction;SpaceUnique;SpaceVirtual;EncryptionDataAtRestAlgorithm;EncryptionDataAtRestEnabled  
    - Update-Pfa2ContainerDefaultProtection: Ids  
    - Update-Pfa2DirectoryServiceRole: RoleNames  
    - Update-Pfa2Pod: Ids  
    - Update-Pfa2ProtectionGroup: PodId;PodName;SourceId;SourceName;SpaceDataReduction;SpaceShared;SpaceSnapshots;SpaceSystem;SpaceThinProvisioning;SpaceTotalPhysical;SpaceTotalProvisioned;SpaceTotalReduction;SpaceUnique;SpaceVirtual;ManualEradication  
    - Update-Pfa2ProtectionGroupTarget: ProtectionGroupName;TargetName  
    - New-Pfa2ProtectionGroupSnapshot: SourceNames;PodId;PodName;SourceId;SpaceDataReduction;SpaceShared;SpaceSnapshots;SpaceSystem;SpaceThinProvisioning;SpaceTotalPhysical;SpaceTotalProvisioned;SpaceTotalReduction;SpaceUnique;SpaceVirtual;ManualEradication  
    - Update-Pfa2ProtectionGroupSnapshot: PodId;PodName;SourceId;SourceName;SpaceDataReduction;SpaceShared;SpaceSnapshots;SpaceSystem;SpaceThinProvisioning;SpaceTotalPhysical;SpaceTotalProvisioned;SpaceTotalReduction;SpaceUnique;SpaceVirtual;ManualEradication  
    - Update-Pfa2RemoteProtectionGroup: Ids;RemoteId;RemoteName;SourceId;SourceName  
    - New-Pfa2RemoteProtectionGroupSnapshot: SourceNames;RemoteId;RemoteName  
    - Set-Pfa2VolumeTagBatch: TagResourceId;TagResourceName  
    - New-Pfa2VolumeGroup: SpaceDataReduction;SpaceShared;SpaceSnapshots;SpaceSystem;SpaceThinProvisioning;SpaceTotalPhysical;SpaceTotalProvisioned;SpaceTotalReduction;SpaceUnique;SpaceVirtual  
    - Update-Pfa2VolumeGroup: Ids;SpaceDataReduction;SpaceShared;SpaceSnapshots;SpaceSystem;SpaceThinProvisioning;SpaceTotalPhysical;SpaceTotalProvisioned;SpaceTotalReduction;SpaceUnique;SpaceVirtual  


## PERFORMANCE TESTING
No performance testing was done for this release.

## OPEN SOURCE LICENSES
Please review licenses.txt
