# Pure Storage PowerShell SDK for FlashArray 2.52.323 Release Notes

GA Release: 24/08/2026

The Pure Storage PowerShell SDK for FlashArray provides integration with the Purity Operating Environment and the FlashArray.
It provides the functionalities of Purity's REST API as PowerShell cmdlets.

## RELEASE REQUIREMENTS AND COMPATIBILITY

This release requires at least .NET Core 2.1 (https://dotnet.microsoft.com/download/dotnet-core/2.1/).
This release is compatible with Purity FlashArrays that support Pure Storage REST API 2.0 to 2.52 inclusive.
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

## In this release we introduce miron changes and bugfixes. Few endpoints got new optional property in response.
Find detailed information about the cmdlets in the sections below.

# On this release () we added the following 64 new cmdlet(s):
* Get-Pfa2ActiveDirectoryTest
* Get-Pfa2ArraysCache
* Get-Pfa2Bucket
* New-Pfa2Bucket
* Update-Pfa2Bucket
* Remove-Pfa2Bucket
* Get-Pfa2BucketPerformance
* Get-Pfa2BucketSpace
* Update-Pfa2DirectoryServiceTest
* Get-Pfa2HostGroupsQos
* Get-Pfa2HostsQos
* Get-Pfa2LifecycleRules
* New-Pfa2LifecycleRules
* Update-Pfa2LifecycleRules
* Remove-Pfa2LifecycleRules
* Get-Pfa2ObjectStoreAccessKeys
* New-Pfa2ObjectStoreAccessKeys
* Update-Pfa2ObjectStoreAccessKeys
* Remove-Pfa2ObjectStoreAccessKeys
* Get-Pfa2ObjectStoreAccounts
* New-Pfa2ObjectStoreAccounts
* Remove-Pfa2ObjectStoreAccounts
* Get-Pfa2ObjectStoreAccountsSpace
* Get-Pfa2ObjectStoreUsers
* New-Pfa2ObjectStoreUsers
* Remove-Pfa2ObjectStoreUsers
* Get-Pfa2ObjectStoreUsersPoliciesObjectStoreAccess
* New-Pfa2ObjectStoreUsersPoliciesObjectStoreAccess
* Remove-Pfa2ObjectStoreUsersPoliciesObjectStoreAccess
* Get-Pfa2ObjectStoreVirtualHosts
* New-Pfa2ObjectStoreVirtualHosts
* Remove-Pfa2ObjectStoreVirtualHosts
* Update-Pfa2Offload
* Get-Pfa2PodReplicaLinkPerformanceReplicationByArray
* Get-Pfa2PoliciesNetworkAccess
* New-Pfa2PoliciesNetworkAccess
* Update-Pfa2PoliciesNetworkAccess
* Remove-Pfa2PoliciesNetworkAccess
* Get-Pfa2PoliciesNetworkAccessMembers
* Get-Pfa2PoliciesNetworkAccessRules
* New-Pfa2PoliciesNetworkAccessRules
* Update-Pfa2PoliciesNetworkAccessRules
* Remove-Pfa2PoliciesNetworkAccessRules
* Update-Pfa2PolicyNfsClientRule
* Get-Pfa2PoliciesObjectStoreAccess
* Get-Pfa2PoliciesObjectStoreAccessMembers
* New-Pfa2PoliciesObjectStoreAccessMembers
* Remove-Pfa2PoliciesObjectStoreAccessMembers
* Get-Pfa2PoliciesObjectStoreAccessRules
* Update-Pfa2PolicySnapshotRule
* Get-Pfa2RealmConnections
* New-Pfa2RealmConnections
* Update-Pfa2RealmConnections
* Remove-Pfa2RealmConnections
* Get-Pfa2RealmConnectionsConnectionKeys
* New-Pfa2RealmConnectionsConnectionKeys
* Remove-Pfa2RealmConnectionsConnectionKeys
* Get-Pfa2RealmQos
* Get-Pfa2RemotePodTag
* Get-Pfa2RemoteRealms
* Get-Pfa2RemoteRealmsTags
* Get-Pfa2SupportSystemManifest
* Get-Pfa2VolumeGroupQos
* Get-Pfa2VolumeQos

# The following 47 cmdlet(s) have new parameters:
- 'Update-Pfa2Admin' have the following new parameter(s): 
	-  AuthorizationModel
- 'Get-Pfa2ArrayConnectionPath' have the following new parameter(s): 
	-  AllowError
	- ContextName
- 'Update-Pfa2Array' have the following new parameter(s): 
	-  NetworkAccessPolicyId
	- NetworkAccessPolicyName
	- NetworkAccessPolicyResourceType
- 'Get-Pfa2Directory' have the following new parameter(s): 
	-  WorkloadIds
	- WorkloadNames
- 'New-Pfa2Directory' have the following new parameter(s): 
	-  AddToPolicyIds
	- AddToPolicyNames
	- IgnoreUsage
	- WithDefaultProtection
	- SourceId
	- SourceName
	- WorkloadId
	- WorkloadName
	- WorkloadConfiguration
- 'Update-Pfa2Directory' have the following new parameter(s): 
	-  WorkloadId
	- WorkloadName
- 'Get-Pfa2DirectoryExport' have the following new parameter(s): 
	-  WorkloadIds
	- WorkloadNames
- 'Update-Pfa2DirectoryService' have the following new parameter(s): 
	-  ToMemberId
	- ToMemberName
- 'Update-Pfa2DirectoryServiceLocalDirectoryService' have the following new parameter(s): 
	-  ToMemberId
	- ToMemberName
	- ServerId
	- ServerName
- 'Get-Pfa2DirectoryServiceTest' have the following new parameter(s): 
	-  Id
	- ServerName
- 'Get-Pfa2Dns' have the following new parameter(s): 
	-  AllowError
	- ContextName
- 'New-Pfa2Dns' have the following new parameter(s): 
	-  ContextName
- 'Update-Pfa2Dns' have the following new parameter(s): 
	-  ContextName
- 'Remove-Pfa2Dns' have the following new parameter(s): 
	-  ContextName
- 'Get-Pfa2FileSystem' have the following new parameter(s): 
	-  WorkloadIds
	- WorkloadNames
- 'New-Pfa2FileSystem' have the following new parameter(s): 
	-  AddToPolicyIds
	- AddToPolicyNames
	- WithDefaultProtection
	- WorkloadId
	- WorkloadName
	- WorkloadConfiguration
- 'Update-Pfa2FileSystem' have the following new parameter(s): 
	-  WorkloadId
	- WorkloadName
- 'New-Pfa2HostGroup' have the following new parameter(s): 
	-  QosBandwidthLimit
	- QosIopsLimit
- 'Update-Pfa2HostGroup' have the following new parameter(s): 
	-  QosBandwidthLimit
	- QosIopsLimit
- 'New-Pfa2Host' have the following new parameter(s): 
	-  NvmeStretch
	- QosBandwidthLimit
	- QosIopsLimit
- 'Update-Pfa2Host' have the following new parameter(s): 
	-  NvmeStretch
	- QosBandwidthLimit
	- QosIopsLimit
- 'Get-Pfa2NetworkInterface' have the following new parameter(s): 
	-  AllowError
	- ContextName
- 'New-Pfa2NetworkInterface' have the following new parameter(s): 
	-  ContextName
- 'Update-Pfa2NetworkInterface' have the following new parameter(s): 
	-  ContextName
- 'Remove-Pfa2NetworkInterface' have the following new parameter(s): 
	-  ContextName
- 'New-Pfa2Offload' have the following new parameter(s): 
	-  AzureClientId
	- AzureClientSecret
	- AzurePlacementStrategy
	- AzureTenantId
- 'New-Pfa2PolicyAlertWatcherRule' have the following new parameter(s): 
	-  RulesAlertClosureNotification
- 'Get-Pfa2PolicyNfs' have the following new parameter(s): 
	-  WorkloadIds
	- WorkloadNames
- 'Get-Pfa2PolicyQuota' have the following new parameter(s): 
	-  WorkloadIds
	- WorkloadNames
- 'Get-Pfa2PolicySmb' have the following new parameter(s): 
	-  WorkloadIds
	- WorkloadNames
- 'Get-Pfa2PolicySnapshot' have the following new parameter(s): 
	-  WorkloadIds
	- WorkloadNames
- 'Update-Pfa2PolicySnapshot' have the following new parameter(s): 
	-  RetentionLock
- 'New-Pfa2PresetWorkload' have the following new parameter(s): 
	-  SkipVerifyDeployable
	- PlatformFeatures
	- DirectoryConfigurationsCount
	- DirectoryConfigurationsName
	- DirectoryConfigurationsNamingPatterns
	- DirectoryConfigurationsPlacementConfigurations
	- DirectoryConfigurationsQuotaConfigurations
	- DirectoryConfigurationsSnapshotConfigurations
	- PeriodicReplicationConfigurationsNamingPatterns
	- QosConfigurationsNamingPatterns
	- QuotaConfigurationsPolicyAction
	- QuotaConfigurationsName
	- QuotaConfigurationsNamingPatterns
	- SnapshotConfigurationsPolicyAction
	- SnapshotConfigurationsNamingPatterns
	- VolumeConfigurationsNamingPatterns
	- DirectoryConfigurationsExportsServers
	- DirectoryConfigurationsMultiProtocolAccessControlStyle
	- DirectoryConfigurationsMultiProtocolSafeguardAcls
	- DirectoryConfigurationsSpecialDirectoriesFastRemove
	- DirectoryConfigurationsSpecialDirectoriesSnapshot
	- ExportConfigurationsNfsPolicyAction
	- ExportConfigurationsNfsName
	- ExportConfigurationsNfsNamingPatterns
	- ExportConfigurationsSmbPolicyAction
	- ExportConfigurationsSmbName
	- ExportConfigurationsSmbNamingPatterns
	- ExportConfigurationsSmbSharePolicyAction
	- ExportConfigurationsSmbShareName
	- ExportConfigurationsSmbShareNamingPatterns
	- PeriodicReplicationConfigurationsRulesClientName
	- PeriodicReplicationConfigurationsRulesSuffix
	- PeriodicReplicationConfigurationsRulesTimeZone
	- QuotaConfigurationsRulesEnforced
	- QuotaConfigurationsRulesQuotaLimit
	- SnapshotConfigurationsRulesClientName
	- SnapshotConfigurationsRulesSuffix
	- SnapshotConfigurationsRulesTimeZone
	- DirectoryConfigurationsExportsExportConfigurationsNfs
	- DirectoryConfigurationsExportsExportConfigurationsSmb
	- DirectoryConfigurationsExportsExportConfigurationsSmbShare
	- DirectoryConfigurationsExportsNamingPatternsTemplate
	- DirectoryConfigurationsParentDirectoryConfigurationName
	- DirectoryConfigurationsParentFileSystemId
	- DirectoryConfigurationsParentFileSystemName
	- DirectoryConfigurationsPathNamingPatternsTemplate
	- ExportConfigurationsNfsPolicyConfigurationUserMappingEnabled
	- ExportConfigurationsSmbPolicyConfigurationAccessBasedEnumerationEnabled
	- ExportConfigurationsSmbPolicyConfigurationContinuousAvailabilityEnabled
	- ExportConfigurationsNfsPolicyConfigurationRulesAccess
	- ExportConfigurationsNfsPolicyConfigurationRulesAnongid
	- ExportConfigurationsNfsPolicyConfigurationRulesAnonuid
	- ExportConfigurationsNfsPolicyConfigurationRulesAtime
	- ExportConfigurationsNfsPolicyConfigurationRulesClient
	- ExportConfigurationsNfsPolicyConfigurationRulesNfsVersion
	- ExportConfigurationsNfsPolicyConfigurationRulesPermission
	- ExportConfigurationsNfsPolicyConfigurationRulesSecure
	- ExportConfigurationsNfsPolicyConfigurationRulesSecurity
	- ExportConfigurationsSmbPolicyConfigurationRulesAnonymousAccessAllowed
	- ExportConfigurationsSmbPolicyConfigurationRulesClient
	- ExportConfigurationsSmbPolicyConfigurationRulesEncryption
	- ExportConfigurationsSmbPolicyConfigurationRulesPermission
	- ExportConfigurationsSmbSharePolicyConfigurationRulesChange
	- ExportConfigurationsSmbSharePolicyConfigurationRulesFullControl
	- ExportConfigurationsSmbSharePolicyConfigurationRulesPrincipal
	- ExportConfigurationsSmbSharePolicyConfigurationRulesRead
	- ParametersConstraintsResourceReferenceAllowedValuesId
	- ParametersConstraintsResourceReferenceAllowedValuesName
- 'Set-Pfa2PresetWorkload' have the following new parameter(s): 
	-  SkipVerifyDeployable
	- PlatformFeatures
	- DirectoryConfigurationsCount
	- DirectoryConfigurationsName
	- DirectoryConfigurationsNamingPatterns
	- DirectoryConfigurationsPlacementConfigurations
	- DirectoryConfigurationsQuotaConfigurations
	- DirectoryConfigurationsSnapshotConfigurations
	- PeriodicReplicationConfigurationsNamingPatterns
	- QosConfigurationsNamingPatterns
	- QuotaConfigurationsPolicyAction
	- QuotaConfigurationsName
	- QuotaConfigurationsNamingPatterns
	- SnapshotConfigurationsPolicyAction
	- SnapshotConfigurationsNamingPatterns
	- VolumeConfigurationsNamingPatterns
	- DirectoryConfigurationsExportsServers
	- DirectoryConfigurationsMultiProtocolAccessControlStyle
	- DirectoryConfigurationsMultiProtocolSafeguardAcls
	- DirectoryConfigurationsSpecialDirectoriesFastRemove
	- DirectoryConfigurationsSpecialDirectoriesSnapshot
	- ExportConfigurationsNfsPolicyAction
	- ExportConfigurationsNfsName
	- ExportConfigurationsNfsNamingPatterns
	- ExportConfigurationsSmbPolicyAction
	- ExportConfigurationsSmbName
	- ExportConfigurationsSmbNamingPatterns
	- ExportConfigurationsSmbSharePolicyAction
	- ExportConfigurationsSmbShareName
	- ExportConfigurationsSmbShareNamingPatterns
	- PeriodicReplicationConfigurationsRulesClientName
	- PeriodicReplicationConfigurationsRulesSuffix
	- PeriodicReplicationConfigurationsRulesTimeZone
	- QuotaConfigurationsRulesEnforced
	- QuotaConfigurationsRulesQuotaLimit
	- SnapshotConfigurationsRulesClientName
	- SnapshotConfigurationsRulesSuffix
	- SnapshotConfigurationsRulesTimeZone
	- DirectoryConfigurationsExportsExportConfigurationsNfs
	- DirectoryConfigurationsExportsExportConfigurationsSmb
	- DirectoryConfigurationsExportsExportConfigurationsSmbShare
	- DirectoryConfigurationsExportsNamingPatternsTemplate
	- DirectoryConfigurationsParentDirectoryConfigurationName
	- DirectoryConfigurationsParentFileSystemId
	- DirectoryConfigurationsParentFileSystemName
	- DirectoryConfigurationsPathNamingPatternsTemplate
	- ExportConfigurationsNfsPolicyConfigurationUserMappingEnabled
	- ExportConfigurationsSmbPolicyConfigurationAccessBasedEnumerationEnabled
	- ExportConfigurationsSmbPolicyConfigurationContinuousAvailabilityEnabled
	- ExportConfigurationsNfsPolicyConfigurationRulesAccess
	- ExportConfigurationsNfsPolicyConfigurationRulesAnongid
	- ExportConfigurationsNfsPolicyConfigurationRulesAnonuid
	- ExportConfigurationsNfsPolicyConfigurationRulesAtime
	- ExportConfigurationsNfsPolicyConfigurationRulesClient
	- ExportConfigurationsNfsPolicyConfigurationRulesNfsVersion
	- ExportConfigurationsNfsPolicyConfigurationRulesPermission
	- ExportConfigurationsNfsPolicyConfigurationRulesSecure
	- ExportConfigurationsNfsPolicyConfigurationRulesSecurity
	- ExportConfigurationsSmbPolicyConfigurationRulesAnonymousAccessAllowed
	- ExportConfigurationsSmbPolicyConfigurationRulesClient
	- ExportConfigurationsSmbPolicyConfigurationRulesEncryption
	- ExportConfigurationsSmbPolicyConfigurationRulesPermission
	- ExportConfigurationsSmbSharePolicyConfigurationRulesChange
	- ExportConfigurationsSmbSharePolicyConfigurationRulesFullControl
	- ExportConfigurationsSmbSharePolicyConfigurationRulesPrincipal
	- ExportConfigurationsSmbSharePolicyConfigurationRulesRead
	- ParametersConstraintsResourceReferenceAllowedValuesId
	- ParametersConstraintsResourceReferenceAllowedValuesName
- 'Get-Pfa2Realm' have the following new parameter(s): 
	-  AllowError
	- ContextName
- 'New-Pfa2Realm' have the following new parameter(s): 
	-  ContextName
- 'Update-Pfa2Realm' have the following new parameter(s): 
	-  ContextName
- 'Remove-Pfa2Realm' have the following new parameter(s): 
	-  ContextName
- 'Get-Pfa2RemotePod' have the following new parameter(s): 
	-  OnIds
- 'New-Pfa2RemoteProtectionGroupSnapshot' have the following new parameter(s): 
	-  TagCopyable
	- TagKey
	- TagNamespace
	- TagValue
	- TagsContextId
	- TagsContextName
	- TagsResourceId
	- TagsResourceName
- 'New-Pfa2RemoteProtectionGroupSnapshotTest' have the following new parameter(s): 
	-  TagCopyable
	- TagKey
	- TagNamespace
	- TagValue
	- TagsContextId
	- TagsContextName
	- TagsResourceId
	- TagsResourceName
- 'New-Pfa2SsoSaml2' have the following new parameter(s): 
	-  ManagementTrustOtherSamlSpsInFleet
	- SpEntityId
- 'Update-Pfa2SsoSaml2' have the following new parameter(s): 
	-  ManagementTrustOtherSamlSpsInFleet
	- SpEntityId
- 'Update-Pfa2SsoSaml2Test' have the following new parameter(s): 
	-  ManagementTrustOtherSamlSpsInFleet
	- SpEntityId
- 'New-Pfa2VolumeSnapshot' have the following new parameter(s): 
	-  TagCopyable
	- TagKey
	- TagNamespace
	- TagValue
	- TagsContextId
	- TagsContextName
	- TagsResourceId
	- TagsResourceName
- 'New-Pfa2VolumeSnapshotTest' have the following new parameter(s): 
	-  TagCopyable
	- TagKey
	- TagNamespace
	- TagValue
	- TagsContextId
	- TagsContextName
	- TagsResourceId
	- TagsResourceName
- 'New-Pfa2WorkloadPlacementRecommendation' have the following new parameter(s): 
	-  ResultsParametersName
	- ResultsTargetsId
	- ResultsTargetsName
	- ResultsTargetsResourceType
	- ResultsTargetsCapacity
	- ResultsTargetsModel
	- ResultsTargetsPeriodicReplicationConfigurations
	- ResultsTargetsPlacementConfigurations
	- ResultsParametersValueBoolean
	- ResultsParametersValueInteger
	- ResultsParametersValueString
	- ResultsTargetsCapacityUsedProjectionsDaysUntilFull
	- ResultsTargetsWarningsCode
	- ResultsTargetsWarningsMessage
	- ParametersConstraintsResourceReferenceAllowedValuesId
	- ParametersConstraintsResourceReferenceAllowedValuesName
	- ResultsParametersValueResourceReferenceId
	- ResultsParametersValueResourceReferenceName
	- ResultsParametersValueResourceReferenceResourceType
	- ResultsTargetsCapacityUsedProjectionsProjectionEnd
	- ResultsTargetsCapacityUsedProjectionsProjectionStart
	- ResultsTargetsCapacityUsedProjectionsProjectionBaselineEnd
	- ResultsTargetsCapacityUsedProjectionsProjectionBaselineStart
	- ResultsTargetsLoadProjectionsProjectionAvgEnd
	- ResultsTargetsLoadProjectionsProjectionAvgStart
	- ResultsTargetsLoadProjectionsProjectionBaselineEnd
	- ResultsTargetsLoadProjectionsProjectionBaselineStart
	- ResultsTargetsLoadProjectionsProjectionBlendedMaxEnd
	- ResultsTargetsLoadProjectionsProjectionBlendedMaxStart

## PERFORMANCE TESTING

No performance testing was done for this release.

## OPEN SOURCE LICENSES

Please review licenses.txt


