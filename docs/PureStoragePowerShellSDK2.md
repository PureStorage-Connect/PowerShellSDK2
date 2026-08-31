---
Module Name: PureStoragePowerShellSDK2
Module Guid: a12b790d-4a25-46c3-a457-910bc7203e1f
Download Help Link: http://connect.pure1.purestorage.com/powershell/PureStoragePowerShellSDK2/2.52
Help Version: 2.52.323
Locale: en-US
---

# PureStoragePowerShellSDK2 Module

## Description

The Pure Storage PowerShell SDK for FlashArray provides integration with the Purity Operating Environment and the FlashArray, exposing the Purity REST API as PowerShell cmdlets. This release is compatible with FlashArrays that support Pure Storage REST API 2.0 through 2.52 inclusive.

Start with `Connect-Pfa2Array` to authenticate; the resulting session is cached for the life of the PowerShell session, so the `Array` parameter is optional on subsequent cmdlets. See also `about_Pfa2Configuration`, `about_Pfa2Filtering`, `about_Pfa2ReferenceParameters` and `about_Pfa2Safemode`.

## PureStoragePowerShellSDK2 Cmdlets

### [Connect-Pfa2Array](Connect-Pfa2Array.md)

Connect to an array

### [Disconnect-Pfa2Array](Disconnect-Pfa2Array.md)

Close the connection to the array

### [Get-Pfa2ActiveDirectory](Get-Pfa2ActiveDirectory.md)

(REST API 2.3+) List Active Directory accounts

### [Get-Pfa2ActiveDirectoryTest](Get-Pfa2ActiveDirectoryTest.md)

(REST API 2.36+) Test the Active Directory configuration

### [Get-Pfa2Admin](Get-Pfa2Admin.md)

(REST API 2.2+) List administrators

### [Get-Pfa2AdminApiToken](Get-Pfa2AdminApiToken.md)

(REST API 2.2+) List API tokens

### [Get-Pfa2AdminCache](Get-Pfa2AdminCache.md)

(REST API 2.2+) List administrator cache entries

### [Get-Pfa2AdminSetting](Get-Pfa2AdminSetting.md)

(REST API 2.2+) List administrator settings

### [Get-Pfa2Alert](Get-Pfa2Alert.md)

(REST API 2.2+) List alerts

### [Get-Pfa2AlertEvent](Get-Pfa2AlertEvent.md)

(REST API 2.2+) List alert events

### [Get-Pfa2AlertRule](Get-Pfa2AlertRule.md)

List custom alert rules

### [Get-Pfa2AlertRuleCatalog](Get-Pfa2AlertRuleCatalog.md)

List available customizable alert codes

### [Get-Pfa2AlertWatcher](Get-Pfa2AlertWatcher.md)

(REST API 2.4+) List alert watchers

### [Get-Pfa2AlertWatcherTest](Get-Pfa2AlertWatcherTest.md)

(REST API 2.4+) List alert watcher test

### [Get-Pfa2ApiClient](Get-Pfa2ApiClient.md)

(REST API 2.1+) List API clients

### [Get-Pfa2ApiVersion](Get-Pfa2ApiVersion.md)

List array supported API information and PowerShell supported API information

### [Get-Pfa2App](Get-Pfa2App.md)

(REST API 2.2+) List apps

### [Get-Pfa2AppNode](Get-Pfa2AppNode.md)

(REST API 2.2+) List app nodes

### [Get-Pfa2Array](Get-Pfa2Array.md)

(REST API 2.2+) List arrays

### [Get-Pfa2ArrayCloudCapacity](Get-Pfa2ArrayCloudCapacity.md)

List CBS array capacity status

### [Get-Pfa2ArrayCloudCapacitySupportedStep](Get-Pfa2ArrayCloudCapacitySupportedStep.md)

List CBS array capacity steps

### [Get-Pfa2ArrayCloudProviderTag](Get-Pfa2ArrayCloudProviderTag.md)

(REST API 2.6+) List user tags on the cloud.

### [Get-Pfa2ArrayConnection](Get-Pfa2ArrayConnection.md)

(REST API 2.4+) List the connected arrays

### [Get-Pfa2ArrayConnectionKey](Get-Pfa2ArrayConnectionKey.md)

(REST API 2.4+) List connection key

### [Get-Pfa2ArrayConnectionPath](Get-Pfa2ArrayConnectionPath.md)

(REST API 2.4+) List connection path

### [Get-Pfa2ArrayEula](Get-Pfa2ArrayEula.md)

(REST API 2.2+) List End User Agreement and signature

### [Get-Pfa2ArrayFactoryResetToken](Get-Pfa2ArrayFactoryResetToken.md)

(REST API 2.4+) List factory reset tokens

### [Get-Pfa2ArrayNtpTest](Get-Pfa2ArrayNtpTest.md)

(REST API 2.2+) List NTP test results

### [Get-Pfa2ArrayPerformance](Get-Pfa2ArrayPerformance.md)

(REST API 2.2+) List array front-end performance data

### [Get-Pfa2ArraySpace](Get-Pfa2ArraySpace.md)

(REST API 2.2+) List array space information

### [Get-Pfa2ArrayTag](Get-Pfa2ArrayTag.md)

List tags

### [Get-Pfa2ArraysCache](Get-Pfa2ArraysCache.md)

(REST API 2.44+) List cached fleet array entries

### [Get-Pfa2ArraysPerformanceByLink](Get-Pfa2ArraysPerformanceByLink.md)

List array front-end IO performance data by link

### [Get-Pfa2Audit](Get-Pfa2Audit.md)

(REST API 2.2+) List audits

### [Get-Pfa2Bucket](Get-Pfa2Bucket.md)

(REST API 2.26+) List buckets

### [Get-Pfa2BucketPerformance](Get-Pfa2BucketPerformance.md)

(REST API 2.26+) List bucket performance data

### [Get-Pfa2BucketSpace](Get-Pfa2BucketSpace.md)

(REST API 2.26+) List bucket space data

### [Get-Pfa2Certificate](Get-Pfa2Certificate.md)

(REST API 2.4+) List certificate attributes

### [Get-Pfa2Connection](Get-Pfa2Connection.md)

(REST API 2.0+) List volume connections

### [Get-Pfa2ContainerDefaultProtection](Get-Pfa2ContainerDefaultProtection.md)

List container default protections

### [Get-Pfa2Controller](Get-Pfa2Controller.md)

(REST API 2.2+) List controller information and status

### [Get-Pfa2Directory](Get-Pfa2Directory.md)

(REST API 2.3+) List directories

### [Get-Pfa2DirectoryExport](Get-Pfa2DirectoryExport.md)

(REST API 2.3+) List directory exports

### [Get-Pfa2DirectoryGroup](Get-Pfa2DirectoryGroup.md)

List group with content in directories

### [Get-Pfa2DirectoryGroupQuota](Get-Pfa2DirectoryGroupQuota.md)

List group quotas.

### [Get-Pfa2DirectoryPerformance](Get-Pfa2DirectoryPerformance.md)

(REST API 2.3+) List directory performance data

### [Get-Pfa2DirectoryPolicy](Get-Pfa2DirectoryPolicy.md)

(REST API 2.3+) List policies

### [Get-Pfa2DirectoryPolicyAutodir](Get-Pfa2DirectoryPolicyAutodir.md)

List auto managed directory policies attached to a directory

### [Get-Pfa2DirectoryPolicyNfs](Get-Pfa2DirectoryPolicyNfs.md)

(REST API 2.3+) List NFS policies attached to a directory

### [Get-Pfa2DirectoryPolicyQuota](Get-Pfa2DirectoryPolicyQuota.md)

(REST API 2.7+) List quota policies attached to a directory

### [Get-Pfa2DirectoryPolicySmb](Get-Pfa2DirectoryPolicySmb.md)

(REST API 2.3+) List SMB policies attached to a directory

### [Get-Pfa2DirectoryPolicySnapshot](Get-Pfa2DirectoryPolicySnapshot.md)

(REST API 2.3+) List snapshot policies attached to a directory

### [Get-Pfa2DirectoryPolicyUserGroupQuota](Get-Pfa2DirectoryPolicyUserGroupQuota.md)

List user-group-quota policies attached to a directory

### [Get-Pfa2DirectoryQuota](Get-Pfa2DirectoryQuota.md)

(REST API 2.7+) List directories with attached quota policies

### [Get-Pfa2DirectoryService](Get-Pfa2DirectoryService.md)

(REST API 2.2+) List directory services configuration

### [Get-Pfa2DirectoryServiceLocalDirectoryService](Get-Pfa2DirectoryServiceLocalDirectoryService.md)

List local directory services

### [Get-Pfa2DirectoryServiceLocalGroup](Get-Pfa2DirectoryServiceLocalGroup.md)

List local groups

### [Get-Pfa2DirectoryServiceLocalGroupMember](Get-Pfa2DirectoryServiceLocalGroupMember.md)

List local group memberships

### [Get-Pfa2DirectoryServiceLocalUser](Get-Pfa2DirectoryServiceLocalUser.md)

List local users

### [Get-Pfa2DirectoryServiceLocalUserMember](Get-Pfa2DirectoryServiceLocalUserMember.md)

List local user memberships

### [Get-Pfa2DirectoryServiceRole](Get-Pfa2DirectoryServiceRole.md)

(REST API 2.2+) List group to management access policy mappings

### [Get-Pfa2DirectoryServiceTest](Get-Pfa2DirectoryServiceTest.md)

(REST API 2.2+) List directory services test results

### [Get-Pfa2DirectorySnapshot](Get-Pfa2DirectorySnapshot.md)

(REST API 2.3+) List directory snapshots

### [Get-Pfa2DirectorySpace](Get-Pfa2DirectorySpace.md)

(REST API 2.3+) List directory space information

### [Get-Pfa2DirectoryUser](Get-Pfa2DirectoryUser.md)

List users with content in directories

### [Get-Pfa2DirectoryUserQuota](Get-Pfa2DirectoryUserQuota.md)

List user quotas.

### [Get-Pfa2Dns](Get-Pfa2Dns.md)

(REST API 2.2+) List DNS parameters

### [Get-Pfa2Drive](Get-Pfa2Drive.md)

(REST API 2.4+) List flash, NVRAM, and cache modules

### [Get-Pfa2FileSystem](Get-Pfa2FileSystem.md)

(REST API 2.3+) List file systems

### [Get-Pfa2Fleet](Get-Pfa2Fleet.md)

List fleets

### [Get-Pfa2FleetKey](Get-Pfa2FleetKey.md)

Get fleet key information

### [Get-Pfa2FleetMember](Get-Pfa2FleetMember.md)

List fleet members

### [Get-Pfa2Hardware](Get-Pfa2Hardware.md)

(REST API 2.2+) List hardware component information

### [Get-Pfa2Host](Get-Pfa2Host.md)

(REST API 2.0+) List hosts

### [Get-Pfa2HostGroup](Get-Pfa2HostGroup.md)

(REST API 2.0+) List host groups

### [Get-Pfa2HostGroupHost](Get-Pfa2HostGroupHost.md)

(REST API 2.0+) List host groups that are associated with hosts

### [Get-Pfa2HostGroupPerformance](Get-Pfa2HostGroupPerformance.md)

(REST API 2.0+) List host group performance data

### [Get-Pfa2HostGroupPerformanceByArray](Get-Pfa2HostGroupPerformanceByArray.md)

(REST API 2.0+) List host group performance data by array

### [Get-Pfa2HostGroupProtectionGroup](Get-Pfa2HostGroupProtectionGroup.md)

(REST API 2.1+) List host groups that are members of protection groups

### [Get-Pfa2HostGroupSpace](Get-Pfa2HostGroupSpace.md)

(REST API 2.1+) List host group space information

### [Get-Pfa2HostGroupTag](Get-Pfa2HostGroupTag.md)

List tags

### [Get-Pfa2HostGroupsQos](Get-Pfa2HostGroupsQos.md)

(REST API 2.42+) List host group QoS settings

### [Get-Pfa2HostHostGroup](Get-Pfa2HostHostGroup.md)

(REST API 2.0+) List hosts that are associated with host groups

### [Get-Pfa2HostPerformance](Get-Pfa2HostPerformance.md)

(REST API 2.0+) List host performance data

### [Get-Pfa2HostPerformanceBalance](Get-Pfa2HostPerformanceBalance.md)

(REST API 2.4+) List host performance balance

### [Get-Pfa2HostPerformanceByArray](Get-Pfa2HostPerformanceByArray.md)

(REST API 2.0+) List host performance data by array

### [Get-Pfa2HostProtectionGroup](Get-Pfa2HostProtectionGroup.md)

(REST API 2.1+) List hosts that are members of protection groups

### [Get-Pfa2HostSpace](Get-Pfa2HostSpace.md)

(REST API 2.1+) List host space information

### [Get-Pfa2HostTag](Get-Pfa2HostTag.md)

List tags

### [Get-Pfa2HostsQos](Get-Pfa2HostsQos.md)

(REST API 2.42+) List host QoS settings

### [Get-Pfa2Kmip](Get-Pfa2Kmip.md)

(REST API 2.2+) List KMIP server objects

### [Get-Pfa2KmipTest](Get-Pfa2KmipTest.md)

(REST API 2.2+) Lists KMIP connection tests

### [Get-Pfa2LifecycleRules](Get-Pfa2LifecycleRules.md)

(REST API 2.26+) List bucket lifecycle rules

### [Get-Pfa2MaintenanceWindow](Get-Pfa2MaintenanceWindow.md)

(REST API 2.2+) List maintenance window details

### [Get-Pfa2NetworkInterface](Get-Pfa2NetworkInterface.md)

(REST API 2.4+) List network interfaces

### [Get-Pfa2NetworkInterfaceNeighbor](Get-Pfa2NetworkInterfaceNeighbor.md)

List network interface neighbors

### [Get-Pfa2NetworkInterfacePerformance](Get-Pfa2NetworkInterfacePerformance.md)

(REST API 2.4+) List network performance statistics

### [Get-Pfa2NetworkInterfacePortDetail](Get-Pfa2NetworkInterfacePortDetail.md)

List SFP port details

### [Get-Pfa2ObjectStoreAccessKeys](Get-Pfa2ObjectStoreAccessKeys.md)

(REST API 2.26+) List object store access keys

### [Get-Pfa2ObjectStoreAccounts](Get-Pfa2ObjectStoreAccounts.md)

(REST API 2.26+) List object store accounts

### [Get-Pfa2ObjectStoreAccountsSpace](Get-Pfa2ObjectStoreAccountsSpace.md)

(REST API 2.26+) List object store account space data

### [Get-Pfa2ObjectStoreUsers](Get-Pfa2ObjectStoreUsers.md)

(REST API 2.26+) List object store users

### [Get-Pfa2ObjectStoreUsersPoliciesObjectStoreAccess](Get-Pfa2ObjectStoreUsersPoliciesObjectStoreAccess.md)

(REST API 2.26+) List the object store access policies of a user

### [Get-Pfa2ObjectStoreVirtualHosts](Get-Pfa2ObjectStoreVirtualHosts.md)

(REST API 2.26+) List object store virtual hosts

### [Get-Pfa2Offload](Get-Pfa2Offload.md)

(REST API 2.1+) List offload targets

### [Get-Pfa2Pod](Get-Pfa2Pod.md)

(REST API 2.1+) List pods

### [Get-Pfa2PodArray](Get-Pfa2PodArray.md)

(REST API 2.1+) List pods and their the array members

### [Get-Pfa2PodPerformance](Get-Pfa2PodPerformance.md)

(REST API 2.1+) List pod performance data

### [Get-Pfa2PodPerformanceByArray](Get-Pfa2PodPerformanceByArray.md)

(REST API 2.1+) List pod performance data by array

### [Get-Pfa2PodPerformanceReplication](Get-Pfa2PodPerformanceReplication.md)

(REST API 2.2+) List pod replication performance data

### [Get-Pfa2PodPerformanceReplicationByArray](Get-Pfa2PodPerformanceReplicationByArray.md)

(REST API 2.2+) List pod replication performance data by array

### [Get-Pfa2PodReplicaLink](Get-Pfa2PodReplicaLink.md)

(REST API 2.2+) List pod replica links

### [Get-Pfa2PodReplicaLinkLag](Get-Pfa2PodReplicaLinkLag.md)

(REST API 2.2+) List pod replica link lag objects.

### [Get-Pfa2PodReplicaLinkMappingPolicy](Get-Pfa2PodReplicaLinkMappingPolicy.md)

List policy mappings

### [Get-Pfa2PodReplicaLinkPerformanceReplication](Get-Pfa2PodReplicaLinkPerformanceReplication.md)

(REST API 2.2+) List array pod replica performance data.

### [Get-Pfa2PodReplicaLinkPerformanceReplicationByArray](Get-Pfa2PodReplicaLinkPerformanceReplicationByArray.md)

(REST API 2.40+) List pod replica link replication performance by array

### [Get-Pfa2PodSpace](Get-Pfa2PodSpace.md)

(REST API 2.1+) List pod space information

### [Get-Pfa2PodTag](Get-Pfa2PodTag.md)

List tags

### [Get-Pfa2PoliciesNetworkAccess](Get-Pfa2PoliciesNetworkAccess.md)

(REST API 2.41+) List network access policies

### [Get-Pfa2PoliciesNetworkAccessMembers](Get-Pfa2PoliciesNetworkAccessMembers.md)

(REST API 2.41+) List network access policy members

### [Get-Pfa2PoliciesNetworkAccessRules](Get-Pfa2PoliciesNetworkAccessRules.md)

(REST API 2.41+) List network access policy rules

### [Get-Pfa2PoliciesObjectStoreAccess](Get-Pfa2PoliciesObjectStoreAccess.md)

(REST API 2.26+) List object store access policies

### [Get-Pfa2PoliciesObjectStoreAccessMembers](Get-Pfa2PoliciesObjectStoreAccessMembers.md)

(REST API 2.26+) List object store access policy members

### [Get-Pfa2PoliciesObjectStoreAccessRules](Get-Pfa2PoliciesObjectStoreAccessRules.md)

(REST API 2.26+) List object store access policy rules

### [Get-Pfa2Policy](Get-Pfa2Policy.md)

(REST API 2.3+) List policies

### [Get-Pfa2PolicyAlertWatcher](Get-Pfa2PolicyAlertWatcher.md)

List alert-watcher policies

### [Get-Pfa2PolicyAlertWatcherRule](Get-Pfa2PolicyAlertWatcherRule.md)

List alert-watcher policy rules

### [Get-Pfa2PolicyAlertWatcherRuleTest](Get-Pfa2PolicyAlertWatcherRuleTest.md)

List rules of alert-watcher policy rule test

### [Get-Pfa2PolicyAutodir](Get-Pfa2PolicyAutodir.md)

List auto managed directory policies

### [Get-Pfa2PolicyAutodirMember](Get-Pfa2PolicyAutodirMember.md)

List auto managed directories policy members

### [Get-Pfa2PolicyMember](Get-Pfa2PolicyMember.md)

(REST API 2.3+) List policy members

### [Get-Pfa2PolicyNfs](Get-Pfa2PolicyNfs.md)

(REST API 2.3+) List NFS policies

### [Get-Pfa2PolicyNfsClientRule](Get-Pfa2PolicyNfsClientRule.md)

(REST API 2.3+) List NFS client policy rules

### [Get-Pfa2PolicyNfsMember](Get-Pfa2PolicyNfsMember.md)

(REST API 2.3+) List NFS policy members

### [Get-Pfa2PolicyQuota](Get-Pfa2PolicyQuota.md)

(REST API 2.7+) List quota policies

### [Get-Pfa2PolicyQuotaMember](Get-Pfa2PolicyQuotaMember.md)

(REST API 2.7+) List quota policy members

### [Get-Pfa2PolicyQuotaRule](Get-Pfa2PolicyQuotaRule.md)

(REST API 2.7+) List quota policy rules

### [Get-Pfa2PolicySmb](Get-Pfa2PolicySmb.md)

(REST API 2.3+) List SMB policies

### [Get-Pfa2PolicySmbClientRule](Get-Pfa2PolicySmbClientRule.md)

(REST API 2.3+) List SMB client policy rules

### [Get-Pfa2PolicySmbMember](Get-Pfa2PolicySmbMember.md)

(REST API 2.3+) List SMB policy members

### [Get-Pfa2PolicySnapshot](Get-Pfa2PolicySnapshot.md)

(REST API 2.3+) List snapshot policies

### [Get-Pfa2PolicySnapshotMember](Get-Pfa2PolicySnapshotMember.md)

(REST API 2.3+) List snapshot policy members

### [Get-Pfa2PolicySnapshotRule](Get-Pfa2PolicySnapshotRule.md)

(REST API 2.3+) List snapshot policy rules

### [Get-Pfa2PolicyUserGroupQuota](Get-Pfa2PolicyUserGroupQuota.md)

List user-group-quota policies

### [Get-Pfa2PolicyUserGroupQuotaMember](Get-Pfa2PolicyUserGroupQuotaMember.md)

List user-group-quota policy members

### [Get-Pfa2PolicyUserGroupQuotaRule](Get-Pfa2PolicyUserGroupQuotaRule.md)

List user-group-quota policy rules

### [Get-Pfa2Port](Get-Pfa2Port.md)

(REST API 2.2+) List ports

### [Get-Pfa2PortInitiator](Get-Pfa2PortInitiator.md)

(REST API 2.2+) List port initiators

### [Get-Pfa2PresetWorkload](Get-Pfa2PresetWorkload.md)

List workload presets

### [Get-Pfa2ProtectionGroup](Get-Pfa2ProtectionGroup.md)

(REST API 2.1+) List protection groups

### [Get-Pfa2ProtectionGroupHost](Get-Pfa2ProtectionGroupHost.md)

(REST API 2.1+) List protection groups with host members

### [Get-Pfa2ProtectionGroupHostGroup](Get-Pfa2ProtectionGroupHostGroup.md)

(REST API 2.1+) List protection groups with host group members

### [Get-Pfa2ProtectionGroupPerformanceReplication](Get-Pfa2ProtectionGroupPerformanceReplication.md)

(REST API 2.1+) List protection group replication performance data

### [Get-Pfa2ProtectionGroupPerformanceReplicationByArray](Get-Pfa2ProtectionGroupPerformanceReplicationByArray.md)

(REST API 2.1+) List protection group replication performance data with array details

### [Get-Pfa2ProtectionGroupSnapshot](Get-Pfa2ProtectionGroupSnapshot.md)

(REST API 2.1+) List protection group snapshots

### [Get-Pfa2ProtectionGroupSnapshotTag](Get-Pfa2ProtectionGroupSnapshotTag.md)

List tags

### [Get-Pfa2ProtectionGroupSnapshotTransfer](Get-Pfa2ProtectionGroupSnapshotTransfer.md)

(REST API 2.1+) List protection group snapshots with transfer statistics

### [Get-Pfa2ProtectionGroupSpace](Get-Pfa2ProtectionGroupSpace.md)

(REST API 2.1+) List protection group space information

### [Get-Pfa2ProtectionGroupTag](Get-Pfa2ProtectionGroupTag.md)

List tags

### [Get-Pfa2ProtectionGroupTarget](Get-Pfa2ProtectionGroupTarget.md)

(REST API 2.1+) List protection groups with targets

### [Get-Pfa2ProtectionGroupVolume](Get-Pfa2ProtectionGroupVolume.md)

(REST API 2.1+) List protection groups with volume members

### [Get-Pfa2Realm](Get-Pfa2Realm.md)

List realms

### [Get-Pfa2RealmConnections](Get-Pfa2RealmConnections.md)

(REST API 2.43+) List realm connections

### [Get-Pfa2RealmConnectionsConnectionKeys](Get-Pfa2RealmConnectionsConnectionKeys.md)

(REST API 2.43+) List realm connection keys

### [Get-Pfa2RealmPerformance](Get-Pfa2RealmPerformance.md)

List realm performance data

### [Get-Pfa2RealmQos](Get-Pfa2RealmQos.md)

(REST API 2.43+) List realm QoS settings

### [Get-Pfa2RealmSpace](Get-Pfa2RealmSpace.md)

List realm space information

### [Get-Pfa2RealmTag](Get-Pfa2RealmTag.md)

List tags

### [Get-Pfa2RemoteArray](Get-Pfa2RemoteArray.md)

List remote arrays

### [Get-Pfa2RemotePod](Get-Pfa2RemotePod.md)

(REST API 2.1+) List remote pods

### [Get-Pfa2RemotePodTag](Get-Pfa2RemotePodTag.md)

List tags

### [Get-Pfa2RemoteProtectionGroup](Get-Pfa2RemoteProtectionGroup.md)

(REST API 2.1+) List remote protection groups

### [Get-Pfa2RemoteProtectionGroupSnapshot](Get-Pfa2RemoteProtectionGroupSnapshot.md)

(REST API 2.1+) List remote protection group snapshots

### [Get-Pfa2RemoteProtectionGroupSnapshotTransfer](Get-Pfa2RemoteProtectionGroupSnapshotTransfer.md)

(REST API 2.1+) List remote protection groups with transfer statistics

### [Get-Pfa2RemoteRealms](Get-Pfa2RemoteRealms.md)

(REST API 2.43+) List remote realms

### [Get-Pfa2RemoteRealmsTags](Get-Pfa2RemoteRealmsTags.md)

(REST API 2.43+) List remote realm tags

### [Get-Pfa2RemoteVolumeSnapshot](Get-Pfa2RemoteVolumeSnapshot.md)

(REST API 2.1+) List remote volume snapshots

### [Get-Pfa2RemoteVolumeSnapshotTransfer](Get-Pfa2RemoteVolumeSnapshotTransfer.md)

(REST API 2.1+) List remote volume snapshots with transfer statistics

### [Get-Pfa2ResourceAccess](Get-Pfa2ResourceAccess.md)

List resource access configurations

### [Get-Pfa2ResourceAccessStatus](Get-Pfa2ResourceAccessStatus.md)

List status of resource accesses as specified by resource access configuration

### [Get-Pfa2Servers](Get-Pfa2Servers.md)

List servers

### [Get-Pfa2Session](Get-Pfa2Session.md)

(REST API 2.4+) List session data

### [Get-Pfa2SmiS](Get-Pfa2SmiS.md)

(REST API 2.2+) List SMI-S settings

### [Get-Pfa2SmtpServer](Get-Pfa2SmtpServer.md)

(REST API 2.4+) List SMTP server attributes

### [Get-Pfa2SnmpAgent](Get-Pfa2SnmpAgent.md)

(REST API 2.4+) List SNMP agent

### [Get-Pfa2SnmpAgentMib](Get-Pfa2SnmpAgentMib.md)

(REST API 2.4+) List SNMP agent MIB text

### [Get-Pfa2SnmpManager](Get-Pfa2SnmpManager.md)

(REST API 2.4+) List SNMP managers

### [Get-Pfa2SnmpManagerTest](Get-Pfa2SnmpManagerTest.md)

(REST API 2.4+) List SNMP manager test results

### [Get-Pfa2Software](Get-Pfa2Software.md)

(REST API 2.2+) List software packages

### [Get-Pfa2SoftwareBundle](Get-Pfa2SoftwareBundle.md)

(REST API 2.5+) List software-bundle

### [Get-Pfa2SoftwareCheck](Get-Pfa2SoftwareCheck.md)

(REST API 2.9+) List software check tasks

### [Get-Pfa2SoftwareInstallation](Get-Pfa2SoftwareInstallation.md)

(REST API 2.2+) List software upgrades

### [Get-Pfa2SoftwareInstallationStep](Get-Pfa2SoftwareInstallationStep.md)

(REST API 2.2+) List software upgrade steps

### [Get-Pfa2SoftwarePatch](Get-Pfa2SoftwarePatch.md)

List software patches

### [Get-Pfa2SoftwarePatchCatalog](Get-Pfa2SoftwarePatchCatalog.md)

List available software patches

### [Get-Pfa2SoftwareVersion](Get-Pfa2SoftwareVersion.md)

(REST API 2.9+) List software versions

### [Get-Pfa2SsoSaml2](Get-Pfa2SsoSaml2.md)

(REST API 2.11+) List SAML2 SSO configurations

### [Get-Pfa2SsoSaml2Test](Get-Pfa2SsoSaml2Test.md)

(REST API 2.11+) List existing SAML2 SSO configurations

### [Get-Pfa2Subnet](Get-Pfa2Subnet.md)

(REST API 2.2+) List subnets

### [Get-Pfa2Subscription](Get-Pfa2Subscription.md)

List subscriptions

### [Get-Pfa2SubscriptionAsset](Get-Pfa2SubscriptionAsset.md)

List subscription assets

### [Get-Pfa2Support](Get-Pfa2Support.md)

(REST API 2.2+) List connection paths

### [Get-Pfa2SupportSystemManifest](Get-Pfa2SupportSystemManifest.md)

(REST API 2.44+) List support system manifests

### [Get-Pfa2SupportTest](Get-Pfa2SupportTest.md)

(REST API 2.2+) List Pure Storage Support connection data

### [Get-Pfa2SyslogServer](Get-Pfa2SyslogServer.md)

(REST API 2.4+) List syslog servers

### [Get-Pfa2SyslogServerSetting](Get-Pfa2SyslogServerSetting.md)

(REST API 2.4+) List syslog settings

### [Get-Pfa2SyslogServerTest](Get-Pfa2SyslogServerTest.md)

(REST API 2.4+) List syslog server test results

### [Get-Pfa2Vchost](Get-Pfa2Vchost.md)

List vchosts

### [Get-Pfa2VchostCertificate](Get-Pfa2VchostCertificate.md)

List vchost certificates

### [Get-Pfa2VchostConnection](Get-Pfa2VchostConnection.md)

List the vchost-connections between protocol endpoint and vchost.

### [Get-Pfa2VchostEndpoint](Get-Pfa2VchostEndpoint.md)

List vchost endpoints

### [Get-Pfa2VirtualMachine](Get-Pfa2VirtualMachine.md)

(REST API 2.14+) List Virtual Machines

### [Get-Pfa2VirtualMachineSnapshot](Get-Pfa2VirtualMachineSnapshot.md)

List Virtual Machine Snapshots

### [Get-Pfa2Volume](Get-Pfa2Volume.md)

(REST API 2.0+) List volumes

### [Get-Pfa2VolumeDiff](Get-Pfa2VolumeDiff.md)

(REST API 2.9+) List volume diffs

### [Get-Pfa2VolumeGroup](Get-Pfa2VolumeGroup.md)

(REST API 2.1+) List volume groups

### [Get-Pfa2VolumeGroupPerformance](Get-Pfa2VolumeGroupPerformance.md)

(REST API 2.1+) List volume group performance data

### [Get-Pfa2VolumeGroupQos](Get-Pfa2VolumeGroupQos.md)

(REST API 2.42+) List volume group QoS settings

### [Get-Pfa2VolumeGroupSpace](Get-Pfa2VolumeGroupSpace.md)

(REST API 2.1+) List volume group space information

### [Get-Pfa2VolumeGroupTag](Get-Pfa2VolumeGroupTag.md)

List tags

### [Get-Pfa2VolumeGroupVolume](Get-Pfa2VolumeGroupVolume.md)

(REST API 2.1+) List volume groups with volumes

### [Get-Pfa2VolumePerformance](Get-Pfa2VolumePerformance.md)

(REST API 2.0+) List volume performance data

### [Get-Pfa2VolumePerformanceByArray](Get-Pfa2VolumePerformanceByArray.md)

(REST API 2.0+) List volume performance data by array

### [Get-Pfa2VolumeProtectionGroup](Get-Pfa2VolumeProtectionGroup.md)

(REST API 2.1+) List volumes that are members of protection groups

### [Get-Pfa2VolumeQos](Get-Pfa2VolumeQos.md)

(REST API 2.42+) List volume QoS settings

### [Get-Pfa2VolumeSnapshot](Get-Pfa2VolumeSnapshot.md)

(REST API 2.0+) List volume snapshots

### [Get-Pfa2VolumeSnapshotTags](Get-Pfa2VolumeSnapshotTags.md)

(REST API 2.2+) List tags

### [Get-Pfa2VolumeSnapshotTransfer](Get-Pfa2VolumeSnapshotTransfer.md)

(REST API 2.0+) List volume snapshots with transfer statistics

### [Get-Pfa2VolumeSpace](Get-Pfa2VolumeSpace.md)

(REST API 2.0+) List volume space information

### [Get-Pfa2VolumeTag](Get-Pfa2VolumeTag.md)

(REST API 2.2+) List tags

### [Get-Pfa2VolumeVolumeGroup](Get-Pfa2VolumeVolumeGroup.md)

(REST API 2.1+) List volumes that are in volume groups

### [Get-Pfa2Workload](Get-Pfa2Workload.md)

List workloads

### [Get-Pfa2WorkloadPlacementRecommendation](Get-Pfa2WorkloadPlacementRecommendation.md)

List workload placement recommendations

### [Get-Pfa2WorkloadTag](Get-Pfa2WorkloadTag.md)

List tags

### [Invoke-Pfa2CLICommand](Invoke-Pfa2CLICommand.md)

Execute CLI Command on the FlashArray

### [Invoke-Pfa2RestCommand](Invoke-Pfa2RestCommand.md)

Execute REST request on the FlashArray

### [New-Pfa2ActiveDirectory](New-Pfa2ActiveDirectory.md)

(REST API 2.3+) Create Active Directory account

### [New-Pfa2Admin](New-Pfa2Admin.md)

(REST API 2.2+) Create an administrator

### [New-Pfa2AdminApiToken](New-Pfa2AdminApiToken.md)

(REST API 2.2+) Create API tokens

### [New-Pfa2AlertRule](New-Pfa2AlertRule.md)

Create a custom alert rule

### [New-Pfa2AlertWatcher](New-Pfa2AlertWatcher.md)

(REST API 2.4+) Create alert watcher

### [New-Pfa2ApiClient](New-Pfa2ApiClient.md)

(REST API 2.1+) Create an API client

### [New-Pfa2ArrayAuth](New-Pfa2ArrayAuth.md)

Create an API Client

### [New-Pfa2ArrayConnection](New-Pfa2ArrayConnection.md)

(REST API 2.4+) Create an array connection

### [New-Pfa2ArrayFactoryResetToken](New-Pfa2ArrayFactoryResetToken.md)

(REST API 2.4+) Create a factory reset token

### [New-Pfa2Bucket](New-Pfa2Bucket.md)

(REST API 2.26+) Create a bucket

### [New-Pfa2Certificate](New-Pfa2Certificate.md)

(REST API 2.4+) Create certificate

### [New-Pfa2CertificateSigningRequest](New-Pfa2CertificateSigningRequest.md)

(REST API 2.4+) Create certificate-signing-requests

### [New-Pfa2Connection](New-Pfa2Connection.md)

(REST API 2.0+) Create a connection between a volume and host or host group

### [New-Pfa2Directory](New-Pfa2Directory.md)

(REST API 2.3+) Create directory

### [New-Pfa2DirectoryExport](New-Pfa2DirectoryExport.md)

(REST API 2.3+) Create directory exports

### [New-Pfa2DirectoryLockNlmReclamation](New-Pfa2DirectoryLockNlmReclamation.md)

Create NLM reclamation

### [New-Pfa2DirectoryPolicyAutodir](New-Pfa2DirectoryPolicyAutodir.md)

Create a membership between a directory with one or more auto managed directory policies

### [New-Pfa2DirectoryPolicyNfs](New-Pfa2DirectoryPolicyNfs.md)

(REST API 2.3+) Create a membership between a directory and one or more NFS policies

### [New-Pfa2DirectoryPolicyQuota](New-Pfa2DirectoryPolicyQuota.md)

(REST API 2.7+) Create a membership between a directory and one or more quota policies

### [New-Pfa2DirectoryPolicySmb](New-Pfa2DirectoryPolicySmb.md)

(REST API 2.3+) Create a membership between a directory and one or more SMB policies

### [New-Pfa2DirectoryPolicySnapshot](New-Pfa2DirectoryPolicySnapshot.md)

(REST API 2.3+) Create a membership between a directory with one or more snapshot policies

### [New-Pfa2DirectoryPolicyUserGroupQuota](New-Pfa2DirectoryPolicyUserGroupQuota.md)

Create a membership between a directory and one or more user-group-quota policies

### [New-Pfa2DirectoryService](New-Pfa2DirectoryService.md)

Create directory services configuration

### [New-Pfa2DirectoryServiceLocalDirectoryService](New-Pfa2DirectoryServiceLocalDirectoryService.md)

Create local directory service

### [New-Pfa2DirectoryServiceLocalGroup](New-Pfa2DirectoryServiceLocalGroup.md)

Create local group

### [New-Pfa2DirectoryServiceLocalGroupMember](New-Pfa2DirectoryServiceLocalGroupMember.md)

Create local group membership

### [New-Pfa2DirectoryServiceLocalUser](New-Pfa2DirectoryServiceLocalUser.md)

Create local user

### [New-Pfa2DirectoryServiceLocalUserMember](New-Pfa2DirectoryServiceLocalUserMember.md)

Create local user membership

### [New-Pfa2DirectoryServiceRole](New-Pfa2DirectoryServiceRole.md)

Create a group in management access policy mappings

### [New-Pfa2DirectorySnapshot](New-Pfa2DirectorySnapshot.md)

(REST API 2.3+) Create directory snapshot

### [New-Pfa2Dns](New-Pfa2Dns.md)

(REST API 2.15+) Create DNS configuration

### [New-Pfa2FileSystem](New-Pfa2FileSystem.md)

(REST API 2.3+) Create file system

### [New-Pfa2Files](New-Pfa2Files.md)

Create a file copy

### [New-Pfa2Fleet](New-Pfa2Fleet.md)

Create a fleet

### [New-Pfa2FleetKey](New-Pfa2FleetKey.md)

Create a fleet key

### [New-Pfa2FleetMember](New-Pfa2FleetMember.md)

Add members to a fleet

### [New-Pfa2Host](New-Pfa2Host.md)

(REST API 2.0+) Create a host and upsert tags

### [New-Pfa2HostGroup](New-Pfa2HostGroup.md)

(REST API 2.0+) Create a host group and upsert tags

### [New-Pfa2HostGroupHost](New-Pfa2HostGroupHost.md)

(REST API 2.1+) Create a membership to a host group

### [New-Pfa2HostGroupProtectionGroup](New-Pfa2HostGroupProtectionGroup.md)

(REST API 2.1+) Create a host group

### [New-Pfa2HostHostGroup](New-Pfa2HostHostGroup.md)

(REST API 2.1+) Create a membership to a host group

### [New-Pfa2HostProtectionGroup](New-Pfa2HostProtectionGroup.md)

(REST API 2.1+) Create a host

### [New-Pfa2Kmip](New-Pfa2Kmip.md)

(REST API 2.2+) Create KMIP server object

### [New-Pfa2LifecycleRules](New-Pfa2LifecycleRules.md)

(REST API 2.26+) Create a bucket lifecycle rule

### [New-Pfa2Login](New-Pfa2Login.md)

(REST API 2.0+) Exchange an API token for a session token.

### [New-Pfa2Logout](New-Pfa2Logout.md)

(REST API 2.0+) Invalidate a session token.

### [New-Pfa2MaintenanceWindow](New-Pfa2MaintenanceWindow.md)

(REST API 2.2+) Create a maintenance window

### [New-Pfa2NetworkInterface](New-Pfa2NetworkInterface.md)

(REST API 2.4+) Create network interface

### [New-Pfa2ObjectStoreAccessKeys](New-Pfa2ObjectStoreAccessKeys.md)

(REST API 2.26+) Create an object store access key

### [New-Pfa2ObjectStoreAccounts](New-Pfa2ObjectStoreAccounts.md)

(REST API 2.26+) Create an object store account

### [New-Pfa2ObjectStoreUsers](New-Pfa2ObjectStoreUsers.md)

(REST API 2.26+) Create an object store user

### [New-Pfa2ObjectStoreUsersPoliciesObjectStoreAccess](New-Pfa2ObjectStoreUsersPoliciesObjectStoreAccess.md)

(REST API 2.26+) Attach an object store access policy to a user

### [New-Pfa2ObjectStoreVirtualHosts](New-Pfa2ObjectStoreVirtualHosts.md)

(REST API 2.26+) Create an object store virtual host

### [New-Pfa2Offload](New-Pfa2Offload.md)

(REST API 2.1+) Create offload target

### [New-Pfa2Pod](New-Pfa2Pod.md)

(REST API 2.1+) Create a pod

### [New-Pfa2PodArray](New-Pfa2PodArray.md)

(REST API 2.1+) Creates a pod to be stretched to an array

### [New-Pfa2PodReplicaLink](New-Pfa2PodReplicaLink.md)

(REST API 2.2+) Create pod replica links

### [New-Pfa2PodTest](New-Pfa2PodTest.md)

Create an attempt to clone a pod

### [New-Pfa2PoliciesNetworkAccess](New-Pfa2PoliciesNetworkAccess.md)

(REST API 2.41+) Create a network access policy

### [New-Pfa2PoliciesNetworkAccessRules](New-Pfa2PoliciesNetworkAccessRules.md)

(REST API 2.41+) Create a network access policy rule

### [New-Pfa2PoliciesObjectStoreAccessMembers](New-Pfa2PoliciesObjectStoreAccessMembers.md)

(REST API 2.26+) Attach an object store access policy to a member

### [New-Pfa2PolicyAlertWatcher](New-Pfa2PolicyAlertWatcher.md)

Create alert-watcher policies

### [New-Pfa2PolicyAlertWatcherRule](New-Pfa2PolicyAlertWatcherRule.md)

Create alert-watcher policy rules

### [New-Pfa2PolicyAutodir](New-Pfa2PolicyAutodir.md)

Create auto managed directory policies

### [New-Pfa2PolicyAutodirMember](New-Pfa2PolicyAutodirMember.md)

Create auto managed directory policies

### [New-Pfa2PolicyNfs](New-Pfa2PolicyNfs.md)

(REST API 2.3+) Create NFS policies

### [New-Pfa2PolicyNfsClientRule](New-Pfa2PolicyNfsClientRule.md)

(REST API 2.3+) Create NFS client policy rules

### [New-Pfa2PolicyNfsMember](New-Pfa2PolicyNfsMember.md)

(REST API 2.3+) Create NFS policies

### [New-Pfa2PolicyQuota](New-Pfa2PolicyQuota.md)

(REST API 2.7+) Create quota policies

### [New-Pfa2PolicyQuotaMember](New-Pfa2PolicyQuotaMember.md)

(REST API 2.7+) Create a membership between a managed directory and a quota policy

### [New-Pfa2PolicyQuotaRule](New-Pfa2PolicyQuotaRule.md)

(REST API 2.7+) Create quota policy rules

### [New-Pfa2PolicySmb](New-Pfa2PolicySmb.md)

(REST API 2.3+) Create SMB policies

### [New-Pfa2PolicySmbClientRule](New-Pfa2PolicySmbClientRule.md)

(REST API 2.3+) Create SMB client policy rules

### [New-Pfa2PolicySmbMember](New-Pfa2PolicySmbMember.md)

(REST API 2.3+) Create SMB policies

### [New-Pfa2PolicySnapshot](New-Pfa2PolicySnapshot.md)

(REST API 2.3+) Create snapshot policies

### [New-Pfa2PolicySnapshotMember](New-Pfa2PolicySnapshotMember.md)

(REST API 2.3+) Create snapshot policies

### [New-Pfa2PolicySnapshotRule](New-Pfa2PolicySnapshotRule.md)

(REST API 2.3+) Create snapshot policy rules

### [New-Pfa2PolicyUserGroupQuota](New-Pfa2PolicyUserGroupQuota.md)

Create user-group-quota policies

### [New-Pfa2PolicyUserGroupQuotaMember](New-Pfa2PolicyUserGroupQuotaMember.md)

Create a membership between a managed directory and a user-group-quota policy

### [New-Pfa2PolicyUserGroupQuotaRule](New-Pfa2PolicyUserGroupQuotaRule.md)

Create user-group-quota policy rules

### [New-Pfa2PresetWorkload](New-Pfa2PresetWorkload.md)

Create a workload preset

### [New-Pfa2ProtectionGroup](New-Pfa2ProtectionGroup.md)

(REST API 2.1+) Create a protection group and upsert tags

### [New-Pfa2ProtectionGroupHost](New-Pfa2ProtectionGroupHost.md)

(REST API 2.1+) Create an action to add a host to a protection group

### [New-Pfa2ProtectionGroupHostGroup](New-Pfa2ProtectionGroupHostGroup.md)

(REST API 2.1+) Creates an action to add a host group to a protection group

### [New-Pfa2ProtectionGroupSnapshot](New-Pfa2ProtectionGroupSnapshot.md)

(REST API 2.1+) Create a protection group snapshot and create tags.

### [New-Pfa2ProtectionGroupSnapshotReplica](New-Pfa2ProtectionGroupSnapshotReplica.md)

Create an action to send protection group snapshots

### [New-Pfa2ProtectionGroupSnapshotTest](New-Pfa2ProtectionGroupSnapshotTest.md)

Create an attempt to take protection group snapshot

### [New-Pfa2ProtectionGroupTarget](New-Pfa2ProtectionGroupTarget.md)

(REST API 2.1+) Create an action to add a target to a protection group

### [New-Pfa2ProtectionGroupVolume](New-Pfa2ProtectionGroupVolume.md)

(REST API 2.1+) Create a volume to add it to a protection group

### [New-Pfa2Realm](New-Pfa2Realm.md)

Create realms

### [New-Pfa2RealmConnections](New-Pfa2RealmConnections.md)

(REST API 2.43+) Create a realm connection

### [New-Pfa2RealmConnectionsConnectionKeys](New-Pfa2RealmConnectionsConnectionKeys.md)

(REST API 2.43+) Create a realm connection key

### [New-Pfa2RemoteProtectionGroupSnapshot](New-Pfa2RemoteProtectionGroupSnapshot.md)

(REST API 2.4+) Create remote protection group snapshot and tags

### [New-Pfa2RemoteProtectionGroupSnapshotTest](New-Pfa2RemoteProtectionGroupSnapshotTest.md)

Create an attempt to take remote protection group snapshot

### [New-Pfa2RemoteVolumeSnapshot](New-Pfa2RemoteVolumeSnapshot.md)

(REST API 2.4+) Create a volume snapshot on a connected remote target or offload target

### [New-Pfa2ResourceAccessBatch](New-Pfa2ResourceAccessBatch.md)

Create a resource access configuration

### [New-Pfa2Servers](New-Pfa2Servers.md)

Create server

### [New-Pfa2SnmpManager](New-Pfa2SnmpManager.md)

(REST API 2.4+) Create SNMP manager

### [New-Pfa2Software](New-Pfa2Software.md)

(REST API 2.9+) Create a software package

### [New-Pfa2SoftwareBundle](New-Pfa2SoftwareBundle.md)

(REST API 2.5+) Create software-bundle

### [New-Pfa2SoftwareCheck](New-Pfa2SoftwareCheck.md)

(REST API 2.9+) Create a software check task

### [New-Pfa2SoftwareInstallation](New-Pfa2SoftwareInstallation.md)

(REST API 2.3+) Create a software upgrade

### [New-Pfa2SoftwarePatch](New-Pfa2SoftwarePatch.md)

Create a software patch

### [New-Pfa2SsoSaml2](New-Pfa2SsoSaml2.md)

(REST API 2.11+) Create SAML2 SSO configurations

### [New-Pfa2Subnet](New-Pfa2Subnet.md)

(REST API 2.2+) Create subnet

### [New-Pfa2SyslogServer](New-Pfa2SyslogServer.md)

(REST API 2.4+) Create syslog server

### [New-Pfa2Vchost](New-Pfa2Vchost.md)

Create a vchost

### [New-Pfa2VchostCertificate](New-Pfa2VchostCertificate.md)

Create a vchost certificate

### [New-Pfa2VchostConnection](New-Pfa2VchostConnection.md)

Create a vchost-connection between protocol endpoint and vchost.

### [New-Pfa2VchostEndpoint](New-Pfa2VchostEndpoint.md)

Create a vchost endpoint

### [New-Pfa2VirtualMachine](New-Pfa2VirtualMachine.md)

(REST API 2.10+) Create a virtual machine

### [New-Pfa2Volume](New-Pfa2Volume.md)

(REST API 2.0+) Create or copy a volume and upsert tags

### [New-Pfa2VolumeGroup](New-Pfa2VolumeGroup.md)

(REST API 2.1+) Create a volume group and upsert tags.

### [New-Pfa2VolumeProtectionGroup](New-Pfa2VolumeProtectionGroup.md)

(REST API 2.1+) Create a volume and add it to a protection group

### [New-Pfa2VolumeSnapshot](New-Pfa2VolumeSnapshot.md)

(REST API 2.0+) Create a volume snapshot and tags

### [New-Pfa2VolumeSnapshotTest](New-Pfa2VolumeSnapshotTest.md)

Create the volume snapshot path

### [New-Pfa2Workload](New-Pfa2Workload.md)

Create a workload

### [New-Pfa2WorkloadPlacementRecommendation](New-Pfa2WorkloadPlacementRecommendation.md)

Create a request for a workload placement recommendation.

### [Remove-Pfa2ActiveDirectory](Remove-Pfa2ActiveDirectory.md)

(REST API 2.3+) Delete Active Directory account

### [Remove-Pfa2Admin](Remove-Pfa2Admin.md)

(REST API 2.2+) Delete an administrator

### [Remove-Pfa2AdminApiToken](Remove-Pfa2AdminApiToken.md)

(REST API 2.2+) Delete API tokens

### [Remove-Pfa2AdminCache](Remove-Pfa2AdminCache.md)

(REST API 2.2+) Delete cache entries

### [Remove-Pfa2AlertRule](Remove-Pfa2AlertRule.md)

Delete a custom alert rule

### [Remove-Pfa2AlertWatcher](Remove-Pfa2AlertWatcher.md)

(REST API 2.4+) Delete alert watcher

### [Remove-Pfa2ApiClient](Remove-Pfa2ApiClient.md)

(REST API 2.1+) Delete an API client

### [Remove-Pfa2Array](Remove-Pfa2Array.md)

(REST API 2.4+) Delete an array

### [Remove-Pfa2ArrayCloudProviderTag](Remove-Pfa2ArrayCloudProviderTag.md)

(REST API 2.6+) Delete user tags from the cloud.

### [Remove-Pfa2ArrayConnection](Remove-Pfa2ArrayConnection.md)

(REST API 2.4+) Delete an array connection

### [Remove-Pfa2ArrayFactoryResetToken](Remove-Pfa2ArrayFactoryResetToken.md)

(REST API 2.4+) Delete a factory reset token

### [Remove-Pfa2ArrayTag](Remove-Pfa2ArrayTag.md)

Delete tags

### [Remove-Pfa2Bucket](Remove-Pfa2Bucket.md)

(REST API 2.26+) Delete or eradicate a bucket

### [Remove-Pfa2Certificate](Remove-Pfa2Certificate.md)

(REST API 2.4+) Delete certificate

### [Remove-Pfa2Connection](Remove-Pfa2Connection.md)

(REST API 2.0+) Delete a connection between a volume and its host or host group

### [Remove-Pfa2Directory](Remove-Pfa2Directory.md)

(REST API 2.3+) Delete managed directories

### [Remove-Pfa2DirectoryExport](Remove-Pfa2DirectoryExport.md)

(REST API 2.3+) Delete directory exports

### [Remove-Pfa2DirectoryPolicyAutodir](Remove-Pfa2DirectoryPolicyAutodir.md)

Delete a membership between a directory and one or more auto managed directory policies

### [Remove-Pfa2DirectoryPolicyNfs](Remove-Pfa2DirectoryPolicyNfs.md)

(REST API 2.3+) Delete a membership between a directory and one or more NFS policies

### [Remove-Pfa2DirectoryPolicyQuota](Remove-Pfa2DirectoryPolicyQuota.md)

(REST API 2.7+) Delete a membership between a directory and one or more quota policies

### [Remove-Pfa2DirectoryPolicySmb](Remove-Pfa2DirectoryPolicySmb.md)

(REST API 2.3+) Delete a membership between a directory and one or more SMB policies

### [Remove-Pfa2DirectoryPolicySnapshot](Remove-Pfa2DirectoryPolicySnapshot.md)

(REST API 2.3+) Delete a membership between a directory and one or more snapshot policies

### [Remove-Pfa2DirectoryPolicyUserGroupQuota](Remove-Pfa2DirectoryPolicyUserGroupQuota.md)

Delete a membership between a directory and one or more user-group-quota policies

### [Remove-Pfa2DirectoryService](Remove-Pfa2DirectoryService.md)

Delete directory services configuration

### [Remove-Pfa2DirectoryServiceLocalDirectoryService](Remove-Pfa2DirectoryServiceLocalDirectoryService.md)

Delete local directory services

### [Remove-Pfa2DirectoryServiceLocalGroup](Remove-Pfa2DirectoryServiceLocalGroup.md)

Delete local groups

### [Remove-Pfa2DirectoryServiceLocalGroupMember](Remove-Pfa2DirectoryServiceLocalGroupMember.md)

Delete local group membership

### [Remove-Pfa2DirectoryServiceLocalUser](Remove-Pfa2DirectoryServiceLocalUser.md)

Delete local users

### [Remove-Pfa2DirectoryServiceLocalUserMember](Remove-Pfa2DirectoryServiceLocalUserMember.md)

Delete local user membership

### [Remove-Pfa2DirectoryServiceRole](Remove-Pfa2DirectoryServiceRole.md)

Delete group to management access policy mappings

### [Remove-Pfa2DirectorySnapshot](Remove-Pfa2DirectorySnapshot.md)

(REST API 2.3+) Delete directory snapshot

### [Remove-Pfa2Dns](Remove-Pfa2Dns.md)

(REST API 2.15+) Delete DNS configuration

### [Remove-Pfa2FileSystem](Remove-Pfa2FileSystem.md)

(REST API 2.3+) Delete file system

### [Remove-Pfa2Fleet](Remove-Pfa2Fleet.md)

Delete a fleet

### [Remove-Pfa2FleetMember](Remove-Pfa2FleetMember.md)

Delete fleet members

### [Remove-Pfa2Host](Remove-Pfa2Host.md)

(REST API 2.0+) Delete a host

### [Remove-Pfa2HostGroup](Remove-Pfa2HostGroup.md)

(REST API 2.0+) Delete a host group

### [Remove-Pfa2HostGroupHost](Remove-Pfa2HostGroupHost.md)

(REST API 2.1+) Delete a membership from a host group

### [Remove-Pfa2HostGroupProtectionGroup](Remove-Pfa2HostGroupProtectionGroup.md)

(REST API 2.1+) Delete a host group from a protection group

### [Remove-Pfa2HostGroupTag](Remove-Pfa2HostGroupTag.md)

Delete tags

### [Remove-Pfa2HostHostGroup](Remove-Pfa2HostHostGroup.md)

(REST API 2.1+) Delete a membership from a host group

### [Remove-Pfa2HostProtectionGroup](Remove-Pfa2HostProtectionGroup.md)

(REST API 2.1+) Delete a host from a protection group

### [Remove-Pfa2HostTag](Remove-Pfa2HostTag.md)

Delete tags

### [Remove-Pfa2Kmip](Remove-Pfa2Kmip.md)

(REST API 2.2+) Delete KMIP server object

### [Remove-Pfa2LifecycleRules](Remove-Pfa2LifecycleRules.md)

(REST API 2.26+) Delete a bucket lifecycle rule

### [Remove-Pfa2MaintenanceWindow](Remove-Pfa2MaintenanceWindow.md)

(REST API 2.2+) Delete maintenance window

### [Remove-Pfa2NetworkInterface](Remove-Pfa2NetworkInterface.md)

(REST API 2.4+) Delete network interface

### [Remove-Pfa2ObjectStoreAccessKeys](Remove-Pfa2ObjectStoreAccessKeys.md)

(REST API 2.26+) Delete an object store access key

### [Remove-Pfa2ObjectStoreAccounts](Remove-Pfa2ObjectStoreAccounts.md)

(REST API 2.26+) Delete an object store account

### [Remove-Pfa2ObjectStoreUsers](Remove-Pfa2ObjectStoreUsers.md)

(REST API 2.26+) Delete an object store user

### [Remove-Pfa2ObjectStoreUsersPoliciesObjectStoreAccess](Remove-Pfa2ObjectStoreUsersPoliciesObjectStoreAccess.md)

(REST API 2.26+) Detach an object store access policy from a user

### [Remove-Pfa2ObjectStoreVirtualHosts](Remove-Pfa2ObjectStoreVirtualHosts.md)

(REST API 2.26+) Delete an object store virtual host

### [Remove-Pfa2Offload](Remove-Pfa2Offload.md)

(REST API 2.1+) Delete offload target

### [Remove-Pfa2Pod](Remove-Pfa2Pod.md)

(REST API 2.1+) Delete a pod

### [Remove-Pfa2PodArray](Remove-Pfa2PodArray.md)

(REST API 2.1+) Delete a pod that was stretched to an array

### [Remove-Pfa2PodReplicaLink](Remove-Pfa2PodReplicaLink.md)

(REST API 2.2+) Delete pod replica links

### [Remove-Pfa2PodTag](Remove-Pfa2PodTag.md)

Delete tags

### [Remove-Pfa2PoliciesNetworkAccess](Remove-Pfa2PoliciesNetworkAccess.md)

(REST API 2.41+) Delete a network access policy

### [Remove-Pfa2PoliciesNetworkAccessRules](Remove-Pfa2PoliciesNetworkAccessRules.md)

(REST API 2.41+) Delete a network access policy rule

### [Remove-Pfa2PoliciesObjectStoreAccessMembers](Remove-Pfa2PoliciesObjectStoreAccessMembers.md)

(REST API 2.26+) Detach an object store access policy from a member

### [Remove-Pfa2PolicyAlertWatcher](Remove-Pfa2PolicyAlertWatcher.md)

Delete alert-watcher policies

### [Remove-Pfa2PolicyAlertWatcherRule](Remove-Pfa2PolicyAlertWatcherRule.md)

Delete alert-watcher policy rules

### [Remove-Pfa2PolicyAutodir](Remove-Pfa2PolicyAutodir.md)

Delete auto managed directory policies

### [Remove-Pfa2PolicyAutodirMember](Remove-Pfa2PolicyAutodirMember.md)

Delete auto managed directory policies

### [Remove-Pfa2PolicyNfs](Remove-Pfa2PolicyNfs.md)

(REST API 2.3+) Delete NFS policies

### [Remove-Pfa2PolicyNfsClientRule](Remove-Pfa2PolicyNfsClientRule.md)

(REST API 2.3+) Delete NFS client policy rules.

### [Remove-Pfa2PolicyNfsMember](Remove-Pfa2PolicyNfsMember.md)

(REST API 2.3+) Delete NFS policies

### [Remove-Pfa2PolicyQuota](Remove-Pfa2PolicyQuota.md)

(REST API 2.7+) Delete quota policies

### [Remove-Pfa2PolicyQuotaMember](Remove-Pfa2PolicyQuotaMember.md)

(REST API 2.7+) Delete membership between quota policies and managed directories

### [Remove-Pfa2PolicyQuotaRule](Remove-Pfa2PolicyQuotaRule.md)

(REST API 2.7+) Delete quota policy rules

### [Remove-Pfa2PolicySmb](Remove-Pfa2PolicySmb.md)

(REST API 2.3+) Delete SMB policies

### [Remove-Pfa2PolicySmbClientRule](Remove-Pfa2PolicySmbClientRule.md)

(REST API 2.3+) Delete SMB client policy rules.

### [Remove-Pfa2PolicySmbMember](Remove-Pfa2PolicySmbMember.md)

(REST API 2.3+) Delete SMB policies

### [Remove-Pfa2PolicySnapshot](Remove-Pfa2PolicySnapshot.md)

(REST API 2.3+) Delete snapshot policies

### [Remove-Pfa2PolicySnapshotMember](Remove-Pfa2PolicySnapshotMember.md)

(REST API 2.3+) Delete snapshot policies

### [Remove-Pfa2PolicySnapshotRule](Remove-Pfa2PolicySnapshotRule.md)

(REST API 2.3+) Delete snapshot policy rules

### [Remove-Pfa2PolicyUserGroupQuota](Remove-Pfa2PolicyUserGroupQuota.md)

Delete user-group-quota policies

### [Remove-Pfa2PolicyUserGroupQuotaMember](Remove-Pfa2PolicyUserGroupQuotaMember.md)

Delete membership between user-group-quota policies and managed directories

### [Remove-Pfa2PolicyUserGroupQuotaRule](Remove-Pfa2PolicyUserGroupQuotaRule.md)

Delete quota policy rules

### [Remove-Pfa2PresetWorkload](Remove-Pfa2PresetWorkload.md)

Delete a workload preset

### [Remove-Pfa2ProtectionGroup](Remove-Pfa2ProtectionGroup.md)

(REST API 2.1+) Delete a protection group

### [Remove-Pfa2ProtectionGroupHost](Remove-Pfa2ProtectionGroupHost.md)

(REST API 2.1+) Delete a host from a protection group

### [Remove-Pfa2ProtectionGroupHostGroup](Remove-Pfa2ProtectionGroupHostGroup.md)

(REST API 2.1+) Delete a host group from a protection group

### [Remove-Pfa2ProtectionGroupSnapshot](Remove-Pfa2ProtectionGroupSnapshot.md)

(REST API 2.1+) Delete a protection group snapshot

### [Remove-Pfa2ProtectionGroupSnapshotTag](Remove-Pfa2ProtectionGroupSnapshotTag.md)

Delete tags

### [Remove-Pfa2ProtectionGroupTag](Remove-Pfa2ProtectionGroupTag.md)

Delete tags

### [Remove-Pfa2ProtectionGroupTarget](Remove-Pfa2ProtectionGroupTarget.md)

(REST API 2.1+) Delete a target from a protection group

### [Remove-Pfa2ProtectionGroupVolume](Remove-Pfa2ProtectionGroupVolume.md)

(REST API 2.1+) Delete a volume from a protection group

### [Remove-Pfa2Realm](Remove-Pfa2Realm.md)

Delete realms

### [Remove-Pfa2RealmConnections](Remove-Pfa2RealmConnections.md)

(REST API 2.43+) Delete a realm connection

### [Remove-Pfa2RealmConnectionsConnectionKeys](Remove-Pfa2RealmConnectionsConnectionKeys.md)

(REST API 2.43+) Delete a realm connection key

### [Remove-Pfa2RealmTag](Remove-Pfa2RealmTag.md)

Delete tags

### [Remove-Pfa2RemoteProtectionGroup](Remove-Pfa2RemoteProtectionGroup.md)

(REST API 2.1+) Delete a remote protection group

### [Remove-Pfa2RemoteProtectionGroupSnapshot](Remove-Pfa2RemoteProtectionGroupSnapshot.md)

(REST API 2.1+) Delete a remote protection group snapshot

### [Remove-Pfa2RemoteVolumeSnapshot](Remove-Pfa2RemoteVolumeSnapshot.md)

(REST API 2.4+) Delete a remote volume snapshot

### [Remove-Pfa2ResourceAccess](Remove-Pfa2ResourceAccess.md)

Delete a resource access configuration

### [Remove-Pfa2Servers](Remove-Pfa2Servers.md)

Delete server

### [Remove-Pfa2SnmpManager](Remove-Pfa2SnmpManager.md)

(REST API 2.4+) Delete SNMP manager

### [Remove-Pfa2Software](Remove-Pfa2Software.md)

(REST API 2.11+) Delete a software package

### [Remove-Pfa2SoftwareCheck](Remove-Pfa2SoftwareCheck.md)

(REST API 2.9+) Delete a software check task

### [Remove-Pfa2SsoSaml2](Remove-Pfa2SsoSaml2.md)

(REST API 2.11+) Delete SAML2 SSO configurations

### [Remove-Pfa2Subnet](Remove-Pfa2Subnet.md)

(REST API 2.2+) Delete subnet

### [Remove-Pfa2SyslogServer](Remove-Pfa2SyslogServer.md)

(REST API 2.4+) Delete syslog server

### [Remove-Pfa2Vchost](Remove-Pfa2Vchost.md)

Delete a vchost

### [Remove-Pfa2VchostCertificate](Remove-Pfa2VchostCertificate.md)

Delete a vchost certificate

### [Remove-Pfa2VchostConnection](Remove-Pfa2VchostConnection.md)

Delete the vchost-connection between a protocol endpoint and its vchost

### [Remove-Pfa2VchostEndpoint](Remove-Pfa2VchostEndpoint.md)

Delete a vchost endpoint

### [Remove-Pfa2Volume](Remove-Pfa2Volume.md)

(REST API 2.0+) Delete a volume

### [Remove-Pfa2VolumeGroup](Remove-Pfa2VolumeGroup.md)

(REST API 2.1+) Delete a volume group

### [Remove-Pfa2VolumeGroupTag](Remove-Pfa2VolumeGroupTag.md)

Delete tags

### [Remove-Pfa2VolumeProtectionGroup](Remove-Pfa2VolumeProtectionGroup.md)

(REST API 2.1+) Delete a volume from a protection group

### [Remove-Pfa2VolumeSnapshot](Remove-Pfa2VolumeSnapshot.md)

(REST API 2.0+) Delete a volume snapshot

### [Remove-Pfa2VolumeSnapshotTags](Remove-Pfa2VolumeSnapshotTags.md)

(REST API 2.2+) Delete tags

### [Remove-Pfa2VolumeTag](Remove-Pfa2VolumeTag.md)

(REST API 2.2+) Delete tags

### [Remove-Pfa2Workload](Remove-Pfa2Workload.md)

Delete a workload

### [Remove-Pfa2WorkloadTag](Remove-Pfa2WorkloadTag.md)

Delete tags

### [Set-Pfa2AdminCache](Set-Pfa2AdminCache.md)

(REST API 2.2+) Update or refresh entries in the administrator cache

### [Set-Pfa2ArrayCloudProviderTagBatch](Set-Pfa2ArrayCloudProviderTagBatch.md)

(REST API 2.6+) Update user tags on the cloud.

### [Set-Pfa2ArrayTagBatch](Set-Pfa2ArrayTagBatch.md)

Update tags

### [Set-Pfa2HostGroupTagBatch](Set-Pfa2HostGroupTagBatch.md)

Update tags

### [Set-Pfa2HostTagBatch](Set-Pfa2HostTagBatch.md)

Update tags

### [Set-Pfa2Logging](Set-Pfa2Logging.md)

Control logging to a named file.

### [Set-Pfa2PodTagBatch](Set-Pfa2PodTagBatch.md)

Update tags

### [Set-Pfa2PresetWorkload](Set-Pfa2PresetWorkload.md)

Update a workload preset

### [Set-Pfa2ProtectionGroupSnapshotTagBatch](Set-Pfa2ProtectionGroupSnapshotTagBatch.md)

Update tags

### [Set-Pfa2ProtectionGroupTagBatch](Set-Pfa2ProtectionGroupTagBatch.md)

Update tags

### [Set-Pfa2RealmTagBatch](Set-Pfa2RealmTagBatch.md)

Update tags

### [Set-Pfa2VolumeGroupTagBatch](Set-Pfa2VolumeGroupTagBatch.md)

Update tags

### [Set-Pfa2VolumeSnapshotTagsBatch](Set-Pfa2VolumeSnapshotTagsBatch.md)

(REST API 2.2+) Update tags

### [Set-Pfa2VolumeTagBatch](Set-Pfa2VolumeTagBatch.md)

(REST API 2.2+) Update tags

### [Set-Pfa2WorkloadTagBatch](Set-Pfa2WorkloadTagBatch.md)

Update tags

### [Update-Pfa2ActiveDirectory](Update-Pfa2ActiveDirectory.md)

(REST API 2.15+) Modify Active Directory account

### [Update-Pfa2Admin](Update-Pfa2Admin.md)

(REST API 2.2+) Modify an administrator

### [Update-Pfa2AdminSetting](Update-Pfa2AdminSetting.md)

(REST API 2.2+) Modify administrator settings

### [Update-Pfa2Alert](Update-Pfa2Alert.md)

(REST API 2.2+) Modify flagged state

### [Update-Pfa2AlertRule](Update-Pfa2AlertRule.md)

Modify a custom alert rule

### [Update-Pfa2AlertWatcher](Update-Pfa2AlertWatcher.md)

(REST API 2.4+) Modify alert watcher

### [Update-Pfa2ApiClient](Update-Pfa2ApiClient.md)

(REST API 2.1+) Manage an API client

### [Update-Pfa2App](Update-Pfa2App.md)

(REST API 2.2+) Modify app

### [Update-Pfa2Array](Update-Pfa2Array.md)

(REST API 2.2+) Modify an array

### [Update-Pfa2ArrayCloudCapacity](Update-Pfa2ArrayCloudCapacity.md)

Modify CBS array capacity

### [Update-Pfa2ArrayConnection](Update-Pfa2ArrayConnection.md)

(REST API 2.4+) Modify an array connection

### [Update-Pfa2ArrayEula](Update-Pfa2ArrayEula.md)

(REST API 2.2+) Modify signature on the End User Agreement

### [Update-Pfa2Bucket](Update-Pfa2Bucket.md)

(REST API 2.26+) Modify a bucket

### [Update-Pfa2Certificate](Update-Pfa2Certificate.md)

(REST API 2.4+) Modify certificates

### [Update-Pfa2ContainerDefaultProtection](Update-Pfa2ContainerDefaultProtection.md)

Modify a container's default protections

### [Update-Pfa2Directory](Update-Pfa2Directory.md)

(REST API 2.3+) Modify a managed directory

### [Update-Pfa2DirectoryService](Update-Pfa2DirectoryService.md)

(REST API 2.2+) Modify directory services configuration

### [Update-Pfa2DirectoryServiceLocalDirectoryService](Update-Pfa2DirectoryServiceLocalDirectoryService.md)

Modify local directory service

### [Update-Pfa2DirectoryServiceLocalGroup](Update-Pfa2DirectoryServiceLocalGroup.md)

Modify local groups

### [Update-Pfa2DirectoryServiceLocalUser](Update-Pfa2DirectoryServiceLocalUser.md)

Modify local user

### [Update-Pfa2DirectoryServiceRole](Update-Pfa2DirectoryServiceRole.md)

(REST API 2.2+) Modify group to management access policy mappings

### [Update-Pfa2DirectoryServiceTest](Update-Pfa2DirectoryServiceTest.md)

(REST API 2.36+) Re-run a directory service test

### [Update-Pfa2DirectorySnapshot](Update-Pfa2DirectorySnapshot.md)

(REST API 2.3+) Modify directory snapshot

### [Update-Pfa2Dns](Update-Pfa2Dns.md)

(REST API 2.2+) Modify DNS parameters

### [Update-Pfa2Drive](Update-Pfa2Drive.md)

(REST API 2.4+) Modify flash and NVRAM modules

### [Update-Pfa2FileSystem](Update-Pfa2FileSystem.md)

(REST API 2.3+) Modify a file system

### [Update-Pfa2Fleet](Update-Pfa2Fleet.md)

Modify a fleet

### [Update-Pfa2Hardware](Update-Pfa2Hardware.md)

(REST API 2.2+) Modify visual identification

### [Update-Pfa2Host](Update-Pfa2Host.md)

(REST API 2.0+) Modify a host

### [Update-Pfa2HostGroup](Update-Pfa2HostGroup.md)

(REST API 2.0+) Modify a host group

### [Update-Pfa2Kmip](Update-Pfa2Kmip.md)

(REST API 2.2+) Modify KMIP attributes

### [Update-Pfa2LifecycleRules](Update-Pfa2LifecycleRules.md)

(REST API 2.26+) Modify a bucket lifecycle rule

### [Update-Pfa2NetworkInterface](Update-Pfa2NetworkInterface.md)

(REST API 2.4+) Modify network interface

### [Update-Pfa2ObjectStoreAccessKeys](Update-Pfa2ObjectStoreAccessKeys.md)

(REST API 2.26+) Enable or disable an object store access key

### [Update-Pfa2Offload](Update-Pfa2Offload.md)

(REST API 2.35+) Modify an offload target

### [Update-Pfa2Pod](Update-Pfa2Pod.md)

(REST API 2.1+) Modify a pod

### [Update-Pfa2PodReplicaLink](Update-Pfa2PodReplicaLink.md)

(REST API 2.2+) Modify pod replica links

### [Update-Pfa2PodReplicaLinkMappingPolicy](Update-Pfa2PodReplicaLinkMappingPolicy.md)

Modify policy mappings

### [Update-Pfa2PoliciesNetworkAccess](Update-Pfa2PoliciesNetworkAccess.md)

(REST API 2.41+) Modify a network access policy

### [Update-Pfa2PoliciesNetworkAccessRules](Update-Pfa2PoliciesNetworkAccessRules.md)

(REST API 2.41+) Modify a network access policy rule

### [Update-Pfa2PolicyAutodir](Update-Pfa2PolicyAutodir.md)

Modify auto managed directory policies

### [Update-Pfa2PolicyNfs](Update-Pfa2PolicyNfs.md)

(REST API 2.3+) Modify NFS policies

### [Update-Pfa2PolicyNfsClientRule](Update-Pfa2PolicyNfsClientRule.md)

(REST API 2.35+) Modify an NFS policy client rule

### [Update-Pfa2PolicyQuota](Update-Pfa2PolicyQuota.md)

(REST API 2.7+) Modify quota policies

### [Update-Pfa2PolicyQuotaRule](Update-Pfa2PolicyQuotaRule.md)

(REST API 2.15+) Modify quota policy rules

### [Update-Pfa2PolicySmb](Update-Pfa2PolicySmb.md)

(REST API 2.3+) Modify SMB policies

### [Update-Pfa2PolicySnapshot](Update-Pfa2PolicySnapshot.md)

(REST API 2.3+) Modify snapshot policies

### [Update-Pfa2PolicySnapshotRule](Update-Pfa2PolicySnapshotRule.md)

(REST API 2.35+) Modify a snapshot policy rule

### [Update-Pfa2PolicyUserGroupQuota](Update-Pfa2PolicyUserGroupQuota.md)

Modify user-group-quota policies

### [Update-Pfa2PolicyUserGroupQuotaRule](Update-Pfa2PolicyUserGroupQuotaRule.md)

Modify user-group-quota policy rules

### [Update-Pfa2PresetWorkload](Update-Pfa2PresetWorkload.md)

Modify a workload preset

### [Update-Pfa2ProtectionGroup](Update-Pfa2ProtectionGroup.md)

(REST API 2.1+) Modify a protection group

### [Update-Pfa2ProtectionGroupSnapshot](Update-Pfa2ProtectionGroupSnapshot.md)

(REST API 2.1+) Modify a protection group snapshot

### [Update-Pfa2ProtectionGroupTarget](Update-Pfa2ProtectionGroupTarget.md)

(REST API 2.1+) Modify a protection group target

### [Update-Pfa2Realm](Update-Pfa2Realm.md)

Modify realms

### [Update-Pfa2RealmConnections](Update-Pfa2RealmConnections.md)

(REST API 2.43+) Modify a realm connection

### [Update-Pfa2RemoteProtectionGroup](Update-Pfa2RemoteProtectionGroup.md)

(REST API 2.1+) Modify a remote protection group

### [Update-Pfa2RemoteProtectionGroupSnapshot](Update-Pfa2RemoteProtectionGroupSnapshot.md)

(REST API 2.1+) Modify a remote protection group snapshot

### [Update-Pfa2RemoteVolumeSnapshot](Update-Pfa2RemoteVolumeSnapshot.md)

(REST API 2.4+) Modify a remote volume snapshot

### [Update-Pfa2Servers](Update-Pfa2Servers.md)

Modify server

### [Update-Pfa2SmiS](Update-Pfa2SmiS.md)

(REST API 2.2+) Modify SLP and SMI-S

### [Update-Pfa2SmtpServer](Update-Pfa2SmtpServer.md)

(REST API 2.4+) Modify SMTP server attributes

### [Update-Pfa2SnmpAgent](Update-Pfa2SnmpAgent.md)

(REST API 2.4+) Modify SNMP agent

### [Update-Pfa2SnmpManager](Update-Pfa2SnmpManager.md)

(REST API 2.4+) Modify SNMP manager

### [Update-Pfa2SoftwareInstallation](Update-Pfa2SoftwareInstallation.md)

(REST API 2.3+) Modify software upgrade

### [Update-Pfa2SsoSaml2](Update-Pfa2SsoSaml2.md)

(REST API 2.11+) Modify SAML2 SSO configurations

### [Update-Pfa2SsoSaml2Test](Update-Pfa2SsoSaml2Test.md)

(REST API 2.11+) Modify provided SAML2 SSO configurations

### [Update-Pfa2Subnet](Update-Pfa2Subnet.md)

(REST API 2.2+) Modify subnet

### [Update-Pfa2Support](Update-Pfa2Support.md)

(REST API 2.2+) Create connection path

### [Update-Pfa2SyslogServer](Update-Pfa2SyslogServer.md)

(REST API 2.4+) Modify syslog server

### [Update-Pfa2SyslogServerSetting](Update-Pfa2SyslogServerSetting.md)

(REST API 2.4+) Modify syslog settings

### [Update-Pfa2Vchost](Update-Pfa2Vchost.md)

Modify a vchost

### [Update-Pfa2VchostCertificate](Update-Pfa2VchostCertificate.md)

Modify a vchost certificate

### [Update-Pfa2VchostEndpoint](Update-Pfa2VchostEndpoint.md)

Modify a vchost endpoint

### [Update-Pfa2VirtualMachine](Update-Pfa2VirtualMachine.md)

(REST API 2.10+) Update a virtual machine

### [Update-Pfa2Volume](Update-Pfa2Volume.md)

(REST API 2.0+) Modify a volume

### [Update-Pfa2VolumeGroup](Update-Pfa2VolumeGroup.md)

(REST API 2.1+) Modify a volume group

### [Update-Pfa2VolumeSnapshot](Update-Pfa2VolumeSnapshot.md)

(REST API 2.0+) Modify a volume snapshot

### [Update-Pfa2Workload](Update-Pfa2Workload.md)

Modify a workload
