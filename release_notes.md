# Pure Storage PowerShell SDK for FlashArray 2.33.187 Release Notes

GA Release: 11/7/2024

The Pure Storage PowerShell SDK for FlashArray provides integration with the Purity Operating Environment and the FlashArray.
It provides the functionalities of Purity's REST API as PowerShell cmdlets.

## RELEASE REQUIREMENTS AND COMPATIBILITY

This release requires at least .NET Core 2.1 (https://dotnet.microsoft.com/download/dotnet-core/2.1/).
This release is compatible with Purity FlashArrays that support Pure Storage REST API 2.0 to 2.33 inclusive.
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

# In this release, we added the following 26 new cmdlets:

- Get-Pfa2ArrayCloudCapacity
- Update-Pfa2ArrayCloudCapacity
- Get-Pfa2ArrayCloudCapacitySupportedStep
- New-Pfa2DirectoryServiceRole
- Remove-Pfa2DirectoryServiceRole
- Get-Pfa2Fleet
- New-Pfa2Fleet
- Update-Pfa2Fleet
- Get-Pfa2FleetKey
- New-Pfa2FleetKey
- Get-Pfa2FleetMember
- New-Pfa2FleetMember
- Remove-Pfa2FleetMember
- New-Pfa2PodTest
- Get-Pfa2PodReplicaLinkMappingPolicy
- Update-Pfa2PodReplicaLinkMappingPolicy
- Get-Pfa2PolicyAlertWatcher
- New-Pfa2PolicyAlertWatcher
- Remove-Pfa2PolicyAlertWatcher
- Get-Pfa2PolicyAlertWatcherRule
- New-Pfa2PolicyAlertWatcherRule
- Remove-Pfa2PolicyAlertWatcherRule
- Get-Pfa2PolicyAlertWatcherRuleTest
- Get-Pfa2VchostConnection
- New-Pfa2VchostConnection
- Remove-Pfa2VchostConnection

# The following 62 cmdlets have new parameters:

- 'New-Pfa2Login' have the following new parameter(s):
  - XRequestId
- 'New-Pfa2Logout' have the following new parameter(s):
  - XRequestId
- 'New-Pfa2ActiveDirectory' have the following new parameter(s):
  - ServicePrincipalName
- 'Get-Pfa2Admin' have the following new parameter(s):
  - ExposePublicKey
- 'New-Pfa2Admin' have the following new parameter(s):
  - ManagementAccessPoliciesId
  - ManagementAccessPoliciesName
  - ManagementAccessPoliciesResourceType
- 'Update-Pfa2Admin' have the following new parameter(s):
  - ManagementAccessPoliciesId
  - ManagementAccessPoliciesName
  - ManagementAccessPoliciesResourceType
- 'Update-Pfa2AdminSetting' have the following new parameter(s):
  - RequiredAuthenticationMethodsSsh
  - RequiredAuthenticationMethodsWebUi
- 'New-Pfa2ApiClient' have the following new parameter(s):
  - AccessPoliciesId
  - AccessPoliciesName
  - AccessPoliciesResourceType
- 'Remove-Pfa2ArrayFactoryResetToken' have the following new parameter(s):
  - XRequestId
- 'New-Pfa2ArrayConnection' have the following new parameter(s):
  - Encryption
- 'Update-Pfa2ArrayConnection' have the following new parameter(s):
  - Refresh
  - RenewEncryptionKey
  - ConnectionKey
  - Encryption
  - ManagementAddress
  - ReplicationAddress
  - Type
  - ThrottleDefaultLimit
  - ThrottleWindowLimit
  - ThrottleWindowEnd
  - ThrottleWindowStart
- 'Remove-Pfa2ArrayConnection' have the following new parameter(s):
  - Unreachable
- 'Get-Pfa2ArrayConnectionKey' have the following new parameter(s):
  - XRequestId
  - Encrypted
- 'New-Pfa2Certificate' have the following new parameter(s):
  - KeyAlgorithm
- 'Update-Pfa2Certificate' have the following new parameter(s):
  - KeyAlgorithm
- 'New-Pfa2DirectoryPolicyNfs' have the following new parameter(s):
  - PoliciesExportEnabled
- 'New-Pfa2DirectoryPolicySmb' have the following new parameter(s):
  - PoliciesExportEnabled
- 'New-Pfa2DirectoryExport' have the following new parameter(s):
  - ExportEnabled
- 'Remove-Pfa2DirectoryExport' have the following new parameter(s):
  - DirectoryId
  - DirectoryName
- 'Update-Pfa2DirectoryService' have the following new parameter(s):
  - CaCertificateRefId
  - CaCertificateRefName
  - CaCertificateRefResourceType
  - ManagementSshPublicKeyAttribute
- 'Get-Pfa2DirectoryServiceRole' have the following new parameter(s):
  - Name
- 'Update-Pfa2DirectoryServiceRole' have the following new parameter(s):
  - Name
  - DirectoryServiceRolesName
  - ManagementAccessPoliciesId
  - ManagementAccessPoliciesName
  - NewRoleName
- 'Update-Pfa2DirectoryServiceLocalUser' have the following new parameter(s):
  - NewUid
- 'New-Pfa2DirectoryLockNlmReclamation' have the following new parameter(s):
  - XRequestId
- 'New-Pfa2Dns' have the following new parameter(s):
  - CaCertificateId
  - CaCertificateName
  - CaCertificateResourceType
  - CaCertificateGroupId
  - CaCertificateGroupName
  - CaCertificateGroupResourceType
- 'Update-Pfa2Dns' have the following new parameter(s):
  - CaCertificateId
  - CaCertificateName
  - CaCertificateResourceType
  - CaCertificateGroupId
  - CaCertificateGroupName
  - CaCertificateGroupResourceType
- 'Get-Pfa2HostGroup' have the following new parameter(s):
  - Destroyed
- 'New-Pfa2HostGroup' have the following new parameter(s):
  - Personality
  - IpRangesEnd
  - IpRangesStart
- 'Update-Pfa2HostGroup' have the following new parameter(s):
  - Personality
  - AddIpRangesEnd
  - AddIpRangesStart
- 'Get-Pfa2Host' have the following new parameter(s):
  - Destroyed
- 'New-Pfa2Kmip' have the following new parameter(s):
  - CaCertificateRefId
  - CaCertificateRefName
  - CaCertificateRefResourceType
  - CertificateId
  - CertificateResourceType
- 'Update-Pfa2Kmip' have the following new parameter(s):
  - CaCertificateRefId
  - CaCertificateRefName
  - CaCertificateRefResourceType
  - CertificateId
  - CertificateResourceType
- 'New-Pfa2Pod' have the following new parameter(s):
  - AllowThrottle
- 'Update-Pfa2Pod' have the following new parameter(s):
  - FromMemberId
  - FromMemberNames
  - ToMemberId
  - ToMemberName
  - MoveWithHostName
  - MoveWithHostGroupName
- 'New-Pfa2PolicyNfs' have the following new parameter(s):
  - PolicyMappingMapping
- 'Update-Pfa2PolicyNfs' have the following new parameter(s):
  - Security
- 'New-Pfa2PolicyNfsClientRule' have the following new parameter(s):
  - RulesSecurity
- 'New-Pfa2PolicyNfsMember' have the following new parameter(s):
  - MembersExportEnabled
- 'New-Pfa2PolicySmb' have the following new parameter(s):
  - PolicyMappingMapping
- 'New-Pfa2PolicySmbMember' have the following new parameter(s):
  - MembersExportEnabled
- 'Get-Pfa2ProtectionGroupTarget' have the following new parameter(s):
  - MemberId
- 'New-Pfa2ProtectionGroupTarget' have the following new parameter(s):
  - MemberId
- 'Update-Pfa2ProtectionGroupTarget' have the following new parameter(s):
  - MemberId
- 'Remove-Pfa2ProtectionGroupTarget' have the following new parameter(s):
  - MemberId
- 'New-Pfa2RemoteVolumeSnapshot' have the following new parameter(s):
  - Suffix
- 'Update-Pfa2SmtpServer' have the following new parameter(s):
  - BodyPrefix
  - EncryptionMode
  - SenderUsername
  - SubjectPrefix
- 'Remove-Pfa2Software' have the following new parameter(s):
  - XRequestId
- 'Get-Pfa2SoftwareBundle' have the following new parameter(s):
  - XRequestId
- 'New-Pfa2SoftwareBundle' have the following new parameter(s):
  - XRequestId
- 'Remove-Pfa2SoftwareCheck' have the following new parameter(s):
  - XRequestId
- 'New-Pfa2SoftwareInstallation' have the following new parameter(s):
  - UpgradeParametersName
  - UpgradeParametersValue
- 'New-Pfa2SoftwarePatch' have the following new parameter(s):
  - AllowHaReduction
- 'New-Pfa2SsoSaml2' have the following new parameter(s):
  - IdpVerificationCertificateRefId
  - IdpVerificationCertificateRefName
  - IdpVerificationCertificateRefResourceType
  - SpDecryptionCredentialId
  - SpDecryptionCredentialResourceType
  - SpSigningCredentialId
  - SpSigningCredentialResourceType
- 'Update-Pfa2SsoSaml2' have the following new parameter(s):
  - IdpVerificationCertificateRefId
  - IdpVerificationCertificateRefName
  - IdpVerificationCertificateRefResourceType
  - SpDecryptionCredentialId
  - SpDecryptionCredentialResourceType
  - SpSigningCredentialId
  - SpSigningCredentialResourceType
- 'Update-Pfa2SsoSaml2Test' have the following new parameter(s):
  - IdpVerificationCertificateRefId
  - IdpVerificationCertificateRefName
  - IdpVerificationCertificateRefResourceType
  - SpDecryptionCredentialId
  - SpDecryptionCredentialResourceType
  - SpSigningCredentialId
  - SpSigningCredentialResourceType
- 'Update-Pfa2Support' have the following new parameter(s):
  - RemoteAssistDuration
- 'New-Pfa2SyslogServer' have the following new parameter(s):
  - Service
  - SourcesName
- 'Update-Pfa2SyslogServer' have the following new parameter(s):
  - Service
  - SourcesName
- 'Update-Pfa2SyslogServerSetting' have the following new parameter(s):
  - CaCertificateRefId
  - CaCertificateRefName
  - CaCertificateRefResourceType
- 'New-Pfa2VchostCertificate' have the following new parameter(s):
  - CertificateId
- 'New-Pfa2Volume' have the following new parameter(s):
  - AllowThrottle
  - ProtocolEndpointContainerVersion
- 'Update-Pfa2Volume' have the following new parameter(s):
  - ProtocolEndpointContainerVersion

# The following 5 cmdlets had parameters dropped:

- 'New-Pfa2Certificate' dropped the following parameter(s):
  - CertificateName
- 'Update-Pfa2Certificate' dropped the following parameter(s):
  - CertificateName
- 'Update-Pfa2DirectoryServiceLocalUser' dropped the following parameter(s):
  - Uids
- 'New-Pfa2Offload' dropped the following parameter(s):
  - GoogleCloudAuthRegion
- 'Update-Pfa2ProtectionGroupTarget' dropped the following parameter(s):
  - TargetName

## PERFORMANCE TESTING

No performance testing was done for this release.

## OPEN SOURCE LICENSES

Please review licenses.txt
