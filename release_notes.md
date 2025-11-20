# Pure Storage PowerShell SDK for FlashArray 2.45.148 Release Notes

GA Release: 19/19/2025

The Pure Storage PowerShell SDK for FlashArray provides integration with the Purity Operating Environment and the FlashArray.
It provides the functionalities of Purity's REST API as PowerShell cmdlets.

## RELEASE REQUIREMENTS AND COMPATIBILITY

This release requires at least .NET Core 2.1 (https://dotnet.microsoft.com/download/dotnet-core/2.1/).
This release is compatible with Purity FlashArrays that support Pure Storage REST API 2.0 to 2.45 inclusive.
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

## Few endpoints got new parameters.
Find detailed information about the cmdlets in the sections below.

# The following 33 cmdlet(s) have new parameters:
- 'Remove-Pfa2DirectoryPolicyNfs' have the following new parameter(s):
    - ServerId
    - ServerName
- 'Remove-Pfa2DirectoryPolicySmb' have the following new parameter(s):
    - ServerId
    - ServerName
- 'Remove-Pfa2DirectoryExport' have the following new parameter(s):
    - ServerId
    - ServerName
- 'Update-Pfa2DirectoryExport' have the following new parameter(s):
    - ServerId
    - ServerName
- 'Remove-Pfa2PolicyNfsMember' have the following new parameter(s):
    - ServerId
    - ServerName
- 'Remove-Pfa2PolicySmbMember' have the following new parameter(s):
    - ServerId
    - ServerName

## PERFORMANCE TESTING

No performance testing was done for this release.

## OPEN SOURCE LICENSES

Please review licenses.txt
