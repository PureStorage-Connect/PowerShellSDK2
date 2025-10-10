# Pure Storage PowerShell SDK for FlashArray 2.44.111 Release Notes

GA Release: 10/10/2025

The Pure Storage PowerShell SDK for FlashArray provides integration with the Purity Operating Environment and the FlashArray.
It provides the functionalities of Purity's REST API as PowerShell cmdlets.

## RELEASE REQUIREMENTS AND COMPATIBILITY

This release requires at least .NET Core 2.1 (https://dotnet.microsoft.com/download/dotnet-core/2.1/).
This release is compatible with Purity FlashArrays that support Pure Storage REST API 2.0 to 2.44 inclusive.
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

## In this release, we added the cmdlets for managing Directories, DirectoryServices, Policies, ProtectionGroupSnapshot tags and Servers.
## Multiple endpoints got new parameters.
Find detailed information about the cmdlets in the sections below.

# On this release we added the following 31 new cmdlet(s):
* Get-Pfa2DirectoryGroup
* Get-Pfa2DirectoryPolicyUserGroupQuota
* New-Pfa2DirectoryPolicyUserGroupQuota
* Remove-Pfa2DirectoryPolicyUserGroupQuota
* Get-Pfa2DirectoryUser
* Get-Pfa2DirectoryGroupQuota
* New-Pfa2DirectoryService
* Remove-Pfa2DirectoryService
* Get-Pfa2DirectoryServiceLocalDirectoryService
* New-Pfa2DirectoryServiceLocalDirectoryService
* Update-Pfa2DirectoryServiceLocalDirectoryService
* Remove-Pfa2DirectoryServiceLocalDirectoryService
* Get-Pfa2DirectoryUserQuota
* Get-Pfa2PolicyUserGroupQuota
* New-Pfa2PolicyUserGroupQuota
* Update-Pfa2PolicyUserGroupQuota
* Remove-Pfa2PolicyUserGroupQuota
* Get-Pfa2PolicyUserGroupQuotaMember
* New-Pfa2PolicyUserGroupQuotaMember
* Remove-Pfa2PolicyUserGroupQuotaMember
* Get-Pfa2PolicyUserGroupQuotaRule
* New-Pfa2PolicyUserGroupQuotaRule
* Update-Pfa2PolicyUserGroupQuotaRule
* Remove-Pfa2PolicyUserGroupQuotaRule
* Get-Pfa2ProtectionGroupSnapshotTag
* Remove-Pfa2ProtectionGroupSnapshotTag
* Set-Pfa2ProtectionGroupSnapshotTagBatch
* Get-Pfa2Servers
* New-Pfa2Servers
* Update-Pfa2Servers
* Remove-Pfa2Servers

# The following 29 cmdlet(s) have new parameters:
- 'New-Pfa2ActiveDirectory' have the following new parameter(s):
    - SourcesId
    - SourcesName
- 'Update-Pfa2ActiveDirectory' have the following new parameter(s):
    - SourcesId
    - SourcesName
- 'New-Pfa2DirectoryPolicyNfs' have the following new parameter(s):
    - PoliciesServerId
    - PoliciesServerName
- 'New-Pfa2DirectoryPolicySmb' have the following new parameter(s):
    - PoliciesServerId
    - PoliciesServerName
- 'Get-Pfa2DirectoryExport' have the following new parameter(s):
    -  Name
- 'New-Pfa2DirectoryExport' have the following new parameter(s):
    - Name
    - ServerId
    - ServerName
- 'Remove-Pfa2DirectoryExport' have the following new parameter(s):
    - Name
- 'Get-Pfa2DirectoryService' have the following new parameter(s):
    - Id
- 'Update-Pfa2DirectoryService' have the following new parameter(s):
    - Id
    - CaCertificateRefId
    - CaCertificateRefName
    - CaCertificateRefResourceType
    - SourcesId
    - SourcesName
- 'Get-Pfa2DirectoryServiceLocalGroup' have the following new parameter(s):
    - AllowErrors
    - ContextName
- 'New-Pfa2DirectoryServiceLocalGroup' have the following new parameter(s):
    - ContextName
    - LocalDirectoryServiceIds
    - LocalDirectoryServiceNames
- 'Update-Pfa2DirectoryServiceLocalGroup' have the following new parameter(s):
    - ContextName
    - LocalDirectoryServiceIds
    - LocalDirectoryServiceNames
    - ContextId
- 'Remove-Pfa2DirectoryServiceLocalGroup' have the following new parameter(s):
    - ContextName
    - LocalDirectoryServiceIds
    - LocalDirectoryServiceNames
- 'Get-Pfa2DirectoryServiceLocalGroupMember' have the following new parameter(s):
    - AllowErrors
    - ContextName
- 'New-Pfa2DirectoryServiceLocalGroupMember' have the following new parameter(s):
    - ContextName
    - LocalDirectoryServiceIds
    - LocalDirectoryServiceNames
- 'Remove-Pfa2DirectoryServiceLocalGroupMember' have the following new parameter(s):
    - ContextName
    - LocalDirectoryServiceIds
    - LocalDirectoryServiceNames
- 'Get-Pfa2DirectoryServiceLocalUser' have the following new parameter(s):
    - AllowErrors
    - ContextName
- 'New-Pfa2DirectoryServiceLocalUser' have the following new parameter(s):
    - ContextName
    - LocalDirectoryServiceIds
    - LocalDirectoryServiceNames
- 'Update-Pfa2DirectoryServiceLocalUser' have the following new parameter(s):
    - ContextName
    - LocalDirectoryServiceIds
    - LocalDirectoryServiceNames
- 'Remove-Pfa2DirectoryServiceLocalUser' have the following new parameter(s):
    - ContextName
    - LocalDirectoryServiceIds
    - LocalDirectoryServiceNames
- 'Get-Pfa2DirectoryServiceLocalUserMember' have the following new parameter(s):
    - AllowErrors
    - ContextName
- 'New-Pfa2DirectoryServiceLocalUserMember' have the following new parameter(s):
    - ContextName
    - LocalDirectoryServiceIds
    - LocalDirectoryServiceNames
- 'Remove-Pfa2DirectoryServiceLocalUserMember' have the following new parameter(s):
    - ContextName
    - LocalDirectoryServiceIds
    - LocalDirectoryServiceNames
- 'New-Pfa2NetworkInterface' have the following new parameter(s):
    - AttachedServersId
    - AttachedServersName
- 'Update-Pfa2NetworkInterface' have the following new parameter(s):
    - AttachedServersId
    - AttachedServersName
- 'New-Pfa2PolicyNfsMember' have the following new parameter(s):
    - MembersServerId
    - MembersServerName
- 'New-Pfa2PolicySmbMember' have the following new parameter(s):
    - MembersServerId
    - MembersServerName
- 'New-Pfa2ProtectionGroupSnapshot' have the following new parameter(s):
    - TagsCopyable
    - TagsKey
    - TagsNamespace
    - TagsValue
    - TagsContextId
    - TagsContextName
    - TagsResourceId
    - TagsResourceName
- 'New-Pfa2ProtectionGroupSnapshotTest' have the following new parameter(s):
    - TagsCopyable
    - TagsKey
    - TagsNamespace
    - TagsValue
    - TagsContextId
    - TagsContextName
    - TagsResourceId
    - TagsResourceName

# The following 16 cmdlet(s) had parameters dropped:
- 'Update-Pfa2Array' dropped the following parameter(s):
    - ContextNames
- 'Update-Pfa2ContainerDefaultProtection' dropped the following parameter(s):
    - ContextNames
- 'Update-Pfa2DirectoryService' dropped the following parameter(s):
    - ContextNames
- 'Update-Pfa2DirectoryServiceRole' dropped the following parameter(s):
    - ContextNames
- 'Set-Pfa2PresetWorkload' dropped the following parameter(s):
    - ContextNames
- 'New-Pfa2ProtectionGroupSnapshot' dropped the following parameter(s):
    - ContextNames
- 'Update-Pfa2ProtectionGroupSnapshot' dropped the following parameter(s):
    - ContextNames
- 'New-Pfa2ProtectionGroupSnapshotTest' dropped the following parameter(s):
    - ContextNames
- 'Update-Pfa2ProtectionGroup' dropped the following parameter(s):
    - ContextNames
- 'New-Pfa2RemoteProtectionGroupSnapshot' dropped the following parameter(s):
    - ContextNames
- 'New-Pfa2RemoteProtectionGroupSnapshotTest' dropped the following parameter(s):
    - ContextNames
- 'Update-Pfa2RemoteProtectionGroup' dropped the following parameter(s):
    - ContextNames
- 'New-Pfa2SyslogServer' dropped the following parameter(s):
    - ContextNames
- 'Update-Pfa2SyslogServer' dropped the following parameter(s):
    - ContextNames
- 'Update-Pfa2SyslogServerSetting' dropped the following parameter(s):
    - ContextNames
- 'New-Pfa2WorkloadPlacementRecommendation' dropped the following parameter(s):
    - ContextNames

## PERFORMANCE TESTING

No performance testing was done for this release.

## OPEN SOURCE LICENSES

Please review licenses.txt
