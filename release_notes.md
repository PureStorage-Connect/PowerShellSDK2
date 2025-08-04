# Pure Storage PowerShell SDK for FlashArray 2.43.30 Release Notes

GA Release: 31/07/2025

The Pure Storage PowerShell SDK for FlashArray provides integration with the Purity Operating Environment and the FlashArray.
It provides the functionalities of Purity's REST API as PowerShell cmdlets.

## RELEASE REQUIREMENTS AND COMPATIBILITY

This release requires at least .NET Core 2.1 (https://dotnet.microsoft.com/download/dotnet-core/2.1/).
This release is compatible with Purity FlashArrays that support Pure Storage REST API 2.0 to 2.43 inclusive.
This release is also compatible to be installed side by side with Pure Storage PowerShell SDK 1.x.
This release requires a 64-bit operating system.
This release requires the following PowerShell minimum versions:
| OS | PowerShell Version |
|------------------------|---------------|
| Windows 10 | 5.1.17134.858 |
| Windows Server 2019 | 5.1.17763.1007 |
| Windows Server 2016 | 5.1.14393.3471 |
| Windows Server 2012R2 | 5.1.14409.1018 |
| *Mac OS | 7.0.1 |
| *Linux | 7.0.1 |

- Not fully tested.

## INSTALLATION AND REMOVAL

### Note: THE INSTALLER MSI HAS BEEN DEPRECATED

### POWERSHELL GALLERY

The Pure Storage FlashArray PowerShell SDK version 2 can be installed via the PowerShell Gallery by using the Install-Module cmdlet:

```
Install-Module -Name PureStoragePowerShellSDK2
```

To install a beta or pre-release version (not to be used in production) of the PowerShell SDK version 2:

```
Install-Module -Name PureStoragePowerShellSDK2 -AllowPrerelease -Force
```

See https://www.powershellgallery.com/ for more details on how to discover resources on the PowerShell Gallery.

To update the Pure Storage PowerShell SDK 2 module, perform the following.

```
Update-Module -Name PureStoragePowerShellSDK2
```

To remove the Pure Storage PowerShell SDK 2 module, perform the following.

```
Remove-Module -Name PureStoragePowerShellSDK2
```

## CMDLET HELP

Download the detailed help using the command `Update-Help -Module PureStoragePowerShellSDK2`.
Get help using `Get-Help -Name Get-Pfa2Volume` for cmdlet Get-Pfa2Volume.
To find what about topics are available: `Get-Help -Name About_Pfa2*`

## In this release, we added the cmdlets for managing Fleets, Presets and Workloads, Realms, Resource Access and Object tags for Array, Host, HostGroup, Pod, ProtectionGroup, Realm, VolumeGroup and Workload
## Multiple endpoints got new parameters.
Find detailed information about the cmdlets in the sections below.

## Fleet management cmdlets:
* Get-Pfa2Fleet
* New-Pfa2Fleet
* Update-Pfa2Fleet
* Remove-Pfa2Fleet
* Get-Pfa2FleetKey
* New-Pfa2FleetKey
* Get-Pfa2FleetMember
* New-Pfa2FleetMember
* Remove-Pfa2FleetMember

## Preset and workload cmdlets:
* Get-Pfa2PresetWorkload
* New-Pfa2PresetWorkload
* Update-Pfa2PresetWorkload
* Set-Pfa2PresetWorkload
* Remove-Pfa2PresetWorkload
* Get-Pfa2Workload
* New-Pfa2Workload
* Update-Pfa2Workload
* Remove-Pfa2Workload
* Get-Pfa2WorkloadPlacementRecommendation
* New-Pfa2WorkloadPlacementRecommendation

## Realm cmdlets:
* Get-Pfa2Realm
* New-Pfa2Realm
* Update-Pfa2Realm
* Remove-Pfa2Realm
* Get-Pfa2RealmPerformance
* Get-Pfa2RealmSpace
* Get-Pfa2RemoteArray

## Resource access cmdlets:
* Get-Pfa2ResourceAccess
* Remove-Pfa2ResourceAccess
* New-Pfa2ResourceAccessBatch
* Get-Pfa2ResourceAccessStatus

## Object tags cmdlets:
* Get-Pfa2ArrayTag
* Set-Pfa2ArrayTagBatch
* Remove-Pfa2ArrayTag
* Get-Pfa2HostGroupTag
* Remove-Pfa2HostGroupTag
* Set-Pfa2HostGroupTagBatch
* Get-Pfa2HostTag
* Remove-Pfa2HostTag
* Set-Pfa2HostTagBatch
* Get-Pfa2PodTag
* Remove-Pfa2PodTag
* Set-Pfa2PodTagBatch
* Get-Pfa2ProtectionGroupTag
* Remove-Pfa2ProtectionGroupTag
* Set-Pfa2ProtectionGroupTagBatch
* Get-Pfa2RealmTag
* Remove-Pfa2RealmTag
* Set-Pfa2RealmTagBatch
* Get-Pfa2VolumeGroupTag
* Remove-Pfa2VolumeGroupTag
* Set-Pfa2VolumeGroupTagBatch
* Get-Pfa2WorkloadTag
* Remove-Pfa2WorkloadTag
* Set-Pfa2WorkloadTagBatch

## The following 262 cmdlet(s) have new parameters:
- 'Get-Pfa2Alert' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Update-Pfa2Alert' have the following new parameter(s):
    - ContextId
    - ContextName
- 'Get-Pfa2AlertEvent' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2AlertRule' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2AlertRule' have the following new parameter(s):
    - ContextId
    - ContextName
- 'Update-Pfa2AlertRule' have the following new parameter(s):
    - ContextId
    - ContextName
- 'Get-Pfa2AlertRuleCatalog' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2AlertWatcherTest' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2Array' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Update-Pfa2Array' have the following new parameter(s):
    - ContextNames
    - ContextId
    - ContextName
- 'Get-Pfa2ArraySpace' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2ArrayConnection' have the following new parameter(s):
    - AllowErrors
    - ContextNames
    - Id
    - RemoteId
    - RemoteName
- 'New-Pfa2ArrayConnection' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2ArrayConnection' have the following new parameter(s):
    - ContextNames
    - Id
- 'Remove-Pfa2ArrayConnection' have the following new parameter(s):
    - ContextNames
    - Id
- 'Get-Pfa2ArrayConnectionPath' have the following new parameter(s):
    - Id
    - RemoteId
    - RemoteName
- 'Get-Pfa2Audit' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2Certificate' have the following new parameter(s):
    - Id
- 'New-Pfa2Certificate' have the following new parameter(s):
    - SubjectAlternativeNames
- 'Update-Pfa2Certificate' have the following new parameter(s):
    - Id
    - SubjectAlternativeNames
- 'Remove-Pfa2Certificate' have the following new parameter(s):
    - Id
- 'New-Pfa2CertificateSigningRequest' have the following new parameter(s):
    - SubjectAlternativeNames
- 'Get-Pfa2Connection' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2Connection' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2Connection' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2ContainerDefaultProtection' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Update-Pfa2ContainerDefaultProtection' have the following new parameter(s):
    - ContextNames
    - ContextId
    - ContextName
- 'Get-Pfa2Directory' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2Directory' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2Directory' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2Directory' have the following new parameter(s):
    - ContextNames
- 'New-Pfa2DirectoryLockNlmReclamation' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2DirectoryPerformance' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2DirectoryPolicy' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2DirectoryPolicyAutodir' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2DirectoryPolicyAutodir' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2DirectoryPolicyAutodir' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2DirectoryPolicyNfs' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2DirectoryPolicyNfs' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2DirectoryPolicyNfs' have the following new parameter(s):
    -  ContextNames
- 'Get-Pfa2DirectoryPolicyQuota' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2DirectoryPolicyQuota' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2DirectoryPolicyQuota' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2DirectoryPolicySmb' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2DirectoryPolicySmb' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2DirectoryPolicySmb' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2DirectoryPolicySnapshot' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2DirectoryPolicySnapshot' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2DirectoryPolicySnapshot' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2DirectorySpace' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2DirectoryExport' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2DirectoryExport' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2DirectoryExport' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2DirectoryQuota' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2DirectoryService' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Update-Pfa2DirectoryService' have the following new parameter(s):
    - ContextNames
    - ContextId
    - ContextName
- 'Get-Pfa2DirectoryServiceRole' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2DirectoryServiceRole' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2DirectoryServiceRole' have the following new parameter(s):
    - ContextNames
    - ContextId
    - ContextName
- 'Remove-Pfa2DirectoryServiceRole' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2DirectoryServiceTest' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2DirectorySnapshot' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2DirectorySnapshot' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2DirectorySnapshot' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2DirectorySnapshot' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2FileSystem' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2FileSystem' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2FileSystem' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2FileSystem' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2HostGroup' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2HostGroup' have the following new parameter(s):
    - ContextNames
    - TagsKey
    - TagsNamespace
    - TagsValue
    - TagsResourceId
    - TagsResourceName
- 'Update-Pfa2HostGroup' have the following new parameter(s):
    - ContextNames
    - FromMemberId
    - FromMemberNames
    - ModifyResourceAccess
    - ToMemberId
    - ToMemberName
- 'Remove-Pfa2HostGroup' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2HostGroupHost' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2HostGroupHost' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2HostGroupHost' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2HostGroupPerformance' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2HostGroupPerformanceByArray' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2HostGroupProtectionGroup' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2HostGroupProtectionGroup' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2HostGroupProtectionGroup' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2HostGroupSpace' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2Host' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2Host' have the following new parameter(s):
    - ContextNames
    - TagsKey
    - TagsNamespace
    - TagsValue
    - TagsResourceId
    - TagsResourceName
- 'Update-Pfa2Host' have the following new parameter(s):
    - ContextNames
    - FromMemberId
    - FromMemberNames
    - ModifyResourceAccess
    - ToMemberId
    - ToMemberName
- 'Remove-Pfa2Host' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2HostHostGroup' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2HostHostGroup' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2HostHostGroup' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2HostPerformance' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2HostPerformanceBalance' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2HostPerformanceByArray' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2HostProtectionGroup' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2HostProtectionGroup' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2HostProtectionGroup' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2HostSpace' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2Offload' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2Offload' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2Offload' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2Pod' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2Pod' have the following new parameter(s):
    - ContextNames
    - TagsCopyable
    - TagsKey
    - TagsNamespace
    - TagsValue
    - TagsContextId
    - TagsContextName
    - TagsResourceId
    - TagsResourceName
- 'Update-Pfa2Pod' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2Pod' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PodArray' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PodArray' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PodArray' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PodPerformance' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2PodPerformanceByArray' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2PodPerformanceReplication' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2PodPerformanceReplicationByArray' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2PodSpace' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PodTest' have the following new parameter(s):
    - ContextNames
    - TagsCopyable
    - TagsKey
    - TagsNamespace
    - TagsValue
    - TagsContextId
    - TagsContextName
    - TagsResourceId
    - TagsResourceName
- 'Get-Pfa2PodReplicaLink' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PodReplicaLink' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2PodReplicaLink' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PodReplicaLink' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PodReplicaLinkLag' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2PodReplicaLinkPerformanceReplication' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2PodReplicaLinkMappingPolicy' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Update-Pfa2PodReplicaLinkMappingPolicy' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2Policy' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2PolicyAlertWatcher' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicyAlertWatcher' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicyAlertWatcher' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicyAlertWatcherRule' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicyAlertWatcherRule' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicyAlertWatcherRule' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicyAlertWatcherRuleTest' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2PolicyAutodir' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicyAutodir' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2PolicyAutodir' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicyAutodir' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicyAutodirMember' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicyAutodirMember' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicyAutodirMember' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicyMember' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2PolicyNfs' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicyNfs' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2PolicyNfs' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicyNfs' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicyNfsClientRule' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicyNfsClientRule' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicyNfsClientRule' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicyNfsMember' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicyNfsMember' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicyNfsMember' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicyQuota' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicyQuota' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2PolicyQuota' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicyQuota' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicyQuotaMember' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicyQuotaMember' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicyQuotaMember' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicyQuotaRule' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicyQuotaRule' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2PolicyQuotaRule' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicyQuotaRule' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicySmb' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicySmb' have the following new parameter(s):
    - ContextNames
    - ContinuousAvailabilityEnabled
- 'Update-Pfa2PolicySmb' have the following new parameter(s):
    - ContextNames
    - ContinuousAvailabilityEnabled
- 'Remove-Pfa2PolicySmb' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicySmbClientRule' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicySmbClientRule' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicySmbClientRule' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicySmbMember' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicySmbMember' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicySmbMember' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicySnapshot' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicySnapshot' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2PolicySnapshot' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicySnapshot' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicySnapshotMember' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicySnapshotMember' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicySnapshotMember' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2PolicySnapshotRule' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2PolicySnapshotRule' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2PolicySnapshotRule' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2Port' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2PortInitiator' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2ProtectionGroup' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2ProtectionGroup' have the following new parameter(s):
    - ContextNames
    - TagsCopyable
    - TagsKey
    - TagsNamespace
    - TagsValue
    - TagsContextId
    - TagsContextName
    - TagsResourceId
    - TagsResourceName
- 'Update-Pfa2ProtectionGroup' have the following new parameter(s):
    - ContextNames
    - ContextId
    - ContextName
    - WorkloadId
    - WorkloadName
- 'Remove-Pfa2ProtectionGroup' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2ProtectionGroupHost' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2ProtectionGroupHost' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2ProtectionGroupHost' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2ProtectionGroupHostGroup' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2ProtectionGroupHostGroup' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2ProtectionGroupHostGroup' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2ProtectionGroupPerformanceReplication' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2ProtectionGroupPerformanceReplicationByArray' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2ProtectionGroupSpace' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2ProtectionGroupTarget' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2ProtectionGroupTarget' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2ProtectionGroupTarget' have the following new parameter(s):
    - ContextNames
    - TargetName
- 'Remove-Pfa2ProtectionGroupTarget' have the following new parameter(s):
    -  ContextNames
- 'Get-Pfa2ProtectionGroupVolume' have the following new parameter(s):
    -  AllowErrors
    - ContextNames
    - IncludeRemote
- 'New-Pfa2ProtectionGroupVolume' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2ProtectionGroupVolume' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2ProtectionGroupSnapshot' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2ProtectionGroupSnapshot' have the following new parameter(s):
    - ContextNames
    - Destroyed
    - ContextId
    - ContextName
- 'Update-Pfa2ProtectionGroupSnapshot' have the following new parameter(s):
    - ContextNames
    - Suffix
    - ContextId
    - ContextName
- 'Remove-Pfa2ProtectionGroupSnapshot' have the following new parameter(s):
    - ContextNames
- 'New-Pfa2ProtectionGroupSnapshotReplica' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2ProtectionGroupSnapshotTransfer' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2ProtectionGroupSnapshotTest' have the following new parameter(s):
    - ContextNames
    - Destroyed
    - ContextId
    - ContextName
- 'Get-Pfa2RemotePod' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2RemoteProtectionGroup' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Update-Pfa2RemoteProtectionGroup' have the following new parameter(s):
    - ContextNames
    - ContextId
    - ContextName
- 'Remove-Pfa2RemoteProtectionGroup' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2RemoteProtectionGroupSnapshot' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2RemoteProtectionGroupSnapshot' have the following new parameter(s):
    -  ContextNames
    - Destroyed
    - ContextId
    - ContextName
- 'Update-Pfa2RemoteProtectionGroupSnapshot' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2RemoteProtectionGroupSnapshot' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2RemoteProtectionGroupSnapshotTransfer' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2RemoteProtectionGroupSnapshotTest' have the following new parameter(s):
    - ContextNames
    - Destroyed
    - ContextId
    - ContextName
- 'Get-Pfa2RemoteVolumeSnapshot' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2RemoteVolumeSnapshot' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2RemoteVolumeSnapshot' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2RemoteVolumeSnapshot' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2RemoteVolumeSnapshotTransfer' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2SnmpManagerTest' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2SsoSaml2Test' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Update-Pfa2SsoSaml2Test' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2SyslogServer' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2SyslogServer' have the following new parameter(s):
    - ContextNames
    - ContextId
    - ContextName
- 'Update-Pfa2SyslogServer' have the following new parameter(s):
    - ContextNames
    - ContextId
    - ContextName
- 'Remove-Pfa2SyslogServer' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2SyslogServerSetting' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Update-Pfa2SyslogServerSetting' have the following new parameter(s):
    - ContextNames
    - ContextId
    - ContextName
- 'Get-Pfa2SyslogServerTest' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2Volume' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2Volume' have the following new parameter(s):
    - ContextNames
    - TagsCopyable
    - TagsKey
    - TagsNamespace
    - TagsValue
    - WorkloadId
    - WorkloadName
    - WorkloadConfiguration
    - TagsContextId
    - TagsContextName
    - TagsResourceId
    - TagsResourceName
- 'Update-Pfa2Volume' have the following new parameter(s):
    - ContextNames
    - WorkloadId
    - WorkloadName
- 'Remove-Pfa2Volume' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2VolumeDiff' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2VolumePerformance' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2VolumePerformanceByArray' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2VolumeProtectionGroup' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2VolumeProtectionGroup' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2VolumeProtectionGroup' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2VolumeSpace' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2VolumeTag' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Remove-Pfa2VolumeTag' have the following new parameter(s):
    - ContextNames
- 'Set-Pfa2VolumeTagBatch' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2VolumeVolumeGroup' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2VolumeGroup' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2VolumeGroup' have the following new parameter(s):
    - ContextNames
    - TagsCopyable
    - TagsKey
    - TagsNamespace
    - TagsValue
    - TagsContextId
    - TagsContextName
    - TagsResourceId
    - TagsResourceName
- 'Update-Pfa2VolumeGroup' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2VolumeGroup' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2VolumeGroupPerformance' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2VolumeGroupSpace' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2VolumeGroupVolume' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2VolumeSnapshot' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'New-Pfa2VolumeSnapshot' have the following new parameter(s):
    - ContextNames
- 'Update-Pfa2VolumeSnapshot' have the following new parameter(s):
    - ContextNames
- 'Remove-Pfa2VolumeSnapshot' have the following new parameter(s):
    - ContextNames
- 'Get-Pfa2VolumeSnapshotTransfer' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Get-Pfa2VolumeSnapshotTags' have the following new parameter(s):
    - AllowErrors
    - ContextNames
- 'Remove-Pfa2VolumeSnapshotTags' have the following new parameter(s):
    - ContextNames
- 'Set-Pfa2VolumeSnapshotTagsBatch' have the following new parameter(s):
    - ContextNames
- 'New-Pfa2VolumeSnapshotTest' have the following new parameter(s):
    - ContextNames

# The following 14 cmdlet(s) had parameters dropped:
- 'New-Pfa2ActiveDirectory' dropped the following parameter(s):
    - ServicePrincipalName
- 'Remove-Pfa2ArrayConnection' dropped the following parameter(s):
    - Unreachable
- 'Update-Pfa2DirectoryService' dropped the following parameter(s):
    - CaCertificateRefId
    - CaCertificateRefName
    - CaCertificateRefResourceType
- 'New-Pfa2HostGroup' dropped the following parameter(s):
    - Personality
    - IpRangesEnd
    - IpRangesStart
- 'Update-Pfa2HostGroup' dropped the following parameter(s):
    - Personality
    - AddIpRangesEnd
    - AddIpRangesStart
- 'New-Pfa2Kmip' dropped the following parameter(s):
    -  CaCertificateRefId
    - CaCertificateRefName
    - CaCertificateRefResourceType
    - CertificateId
    - CertificateResourceType
- 'Update-Pfa2Kmip' dropped the following parameter(s):
    - CaCertificateRefId
    - CaCertificateRefName
    - CaCertificateRefResourceType
    - CertificateId
    - CertificateResourceType
- 'New-Pfa2SsoSaml2' dropped the following parameter(s):
    - IdpVerificationCertificateRefId
    - IdpVerificationCertificateRefName
    - IdpVerificationCertificateRefResourceType
    - SpDecryptionCredentialId
    - SpDecryptionCredentialResourceType
    - SpSigningCredentialId
    - SpSigningCredentialResourceType
- 'Update-Pfa2SsoSaml2' dropped the following parameter(s):
    - IdpVerificationCertificateRefId
    - IdpVerificationCertificateRefName
    - IdpVerificationCertificateRefResourceType
    - SpDecryptionCredentialId
    - SpDecryptionCredentialResourceType
    - SpSigningCredentialId
    - SpSigningCredentialResourceType
- 'Update-Pfa2SsoSaml2Test' dropped the following parameter(s):
    - IdpVerificationCertificateRefId
    - IdpVerificationCertificateRefName
    - IdpVerificationCertificateRefResourceType
    - SpDecryptionCredentialId
    - SpDecryptionCredentialResourceType
    - SpSigningCredentialId
    - SpSigningCredentialResourceType
- 'New-Pfa2SyslogServer' dropped the following parameter(s):
    - SourcesName
- 'Update-Pfa2SyslogServer' dropped the following parameter(s):
    - SourcesName
- 'Update-Pfa2SyslogServerSetting' dropped the following parameter(s):
    - CaCertificateRefId
    - CaCertificateRefName
    - CaCertificateRefResourceType
- 'New-Pfa2VchostCertificate' dropped the following parameter(s):
    - CertificateId

## PERFORMANCE TESTING

No performance testing was done for this release.

## OPEN SOURCE LICENSES

Please review licenses.txt
