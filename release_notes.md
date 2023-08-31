Pure Storage PowerShell SDK for FlashArray 2.24 Release Notes

The Pure Storage PowerShell SDK for FlashArray provides integration with the Purity Operating Environment and the FlashArray.
It provides the functionalities of Purity's REST API as PowerShell cmdlets.

RELEASE NOTES
Get the latest information about this SDK online at: https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/bbb_Microsoft_Integration_Releases/Pure_Storage_PowerShell_SDK

RELEASE REQUIREMENTS AND COMPATIBILITY

This release requires at least .NET Core 2.1 (https://dotnet.microsoft.com/download/dotnet-core/2.1/).
This release is compatible with Purity FlashArrays that support Pure Storage REST API 2.0 to 2.24 inclusive.
This release is also compatible to be installed side by side with Pure Storage PowerShell SDK 1.x.
This release requires a 64-bit operating system.
This release requires the following PowerShell versions:
---------------------------------------
OS                     PowerShell Version
---------------------------------------
Windows 10             5.1.17134.858
Windows Server 2019    5.1.17763.1007
Windows Server 2016    5.1.14393.3471
Windows Server 2012R2  5.1.14409.1018
*Mac OS                7.0.1
*Linux                 7.0.1
---------------------------------------
* Not fully tested.

INSTALLATION AND REMOVAL
The installation can be done using the following methods.

POWERSHELL GALLERY
    The Pure Storage FlashArray PowerShell SDK 2.24 can be installed via the PowerShell Gallery by using the Install-Module cmdlet: "Install-Module -Name PureStoragePowerShellSDK2"
    See https://www.powershellgallery.com/ for more details on how to discover resources on the PowerShell Gallery.

INSTALLER MSI
    To install the Pure Storage PowerShell SDK 2.24 via the MSI installer, extract and run PureStoragePowerShellSDK2Installer.msi, and follow the instructions. The Administrator privilege is required to perform the installation.
    To verify the installation, run "Get-Command -Module PureStoragePowerShellSDK2" in a new PowerShell prompt. The newly installed cmdlets should be listed.

To remove the Pure Storage PowerShell SDK 2 module, perform the following based on the installation method used.
Installed via the PowerShell Gallery: Use the "Remove-Module -Name PureStoragePowerShellSDK2" command.
Installed via the MSI: The Pure Storage PowerShell SDK 2.15 MSI can be uninstalled from "Programs and Features" of the Control Panel.


CMDLET HELP
Download the detailed help using the command "Update-Help -Module PureStoragePowerShellSDK2".
Get help using "Get-Help -Name Get-Pfa2Volume" for cmdlet Get-Pfa2Volume.
To find what about topics are available: "Get-Help -Name About_Pfa2*"

KNOWN ISSUES IN THIS RELEASE
New-Pfa2Kmip
    There is a limitation of the cmdlet New-Pfa2Kmip. When creating a new KMIP server, a certificate is required.
    The mandatory parameter -Certificate accepts the value of a certificate name instead of certificate content.
    The proper workflow to create a KMIP server is:

    1- Import a certificate and assign a name for the certificate

    2- Use a certificate name when creating KMIP server

    However, the Pure Storage FlashArray PowerShell SDK 2.24 does not provide the functionality of importing a certificate (as shown in Step 1).
    The limitation also applies to the Update-Pfa2Kmip cmdlet when a user wants to update a certificate of a specific KMIP server.

    This cmdlet will be introduced in a future release. The alternative way to realize step 1 is to use the CLI to import the certificate.
    Certificate configuration is performed through the GUI (Settings > System) and CLI (purecert command).
    For information about the "purecert" CLI command refer to the "FlashArray CLI Reference Guide" on https://support.purestorage.com/FlashArray/PurityFA/FlashArray_User_Guide.

    The Pure Storage FlashArray PowerShell SDK 2.24 also provides a way to invoke a CLI command.
    Other KMIP related cmdlets like Get-Pfa2Kmip, Delete-Pfa2Kmip, and Get-Pfa2KmipTest do not have the limitation mentioned above.

RESOURCES
PureStorage-Connect GitHub Repository - https://github.com/PureStorage-Connect/PowerShellSDK2
PureCode Slack Team - https://codeinvite.purestorage.com/
Pure Storage Code Website - https://code.purestorage.com

RELEASE 2.24

Release 2.24 adds more than 150 cmdlets.


BACKWARDS COMPATIBILITY
    Invalid parameters were removed from some cmdlets. Those parameters were not actually being used and can simply be dropped.




PERFORMANCE TESTING
No performance testing was done for this release.

OPEN SOURCE LICENSES
Please review licenses.txt

