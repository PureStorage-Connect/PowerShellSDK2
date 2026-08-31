---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2SsoSaml2

## SYNOPSIS

(REST API 2.11+) Create SAML2 SSO configurations

## SYNTAX

```
New-Pfa2SsoSaml2 [-Array <Rest2Api>] [-XRequestID <String>] -Name <String> [-ArrayUrl <String>]
 [-IdpEncryptAssertionEnabled <Boolean>] [-IdpEntityId <String>] [-IdpMetadataUrl <String>]
 [-IdpSignRequestEnabled <Boolean>] [-IdpUrl <String>] [-IdpVerificationCertificate <String>]
 [-ManagementTrustOtherSamlSpsInFleet <Boolean>] [-SpEntityId <String>] [-SpDecryptionCredentialName <String>]
 [-SpSigningCredentialName <String>] [-ApiVersion <String>]
 [<CommonParameters>]
```

## DESCRIPTION

Creates SAML2 SSO configurations.

## EXAMPLES

### Example 1
```powershell
New-Pfa2SsoSaml2 -Array $FlashArray -Name 'idp-okta'
```

Creates a SAML2 single sign-on configuration with only the required parameters supplied.

### Example 2
```powershell
New-Pfa2SsoSaml2 -Array $FlashArray -Name 'idp-okta' -ArrayUrl 'https://flasharray-01.example.com' -IdpEncryptAssertionEnabled $true
```

Creates a SAML2 single sign-on configuration and sets -ArrayUrl and -IdpEncryptAssertionEnabled in the same call.

## PARAMETERS

### -ApiVersion

alternative API version

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Array

The PureArray object representing a connection to a Pure Storage FlashArray. Created using the `Connect-Pfa2Array` cmdlet.

```yaml
Type: Rest2Api
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ArrayUrl

The URL of the array.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdpEncryptAssertionEnabled

Properties specific to the identity provider.  Properties specific to the identity provider.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdpEntityId

Properties specific to the identity provider.  Properties specific to the identity provider.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdpMetadataUrl

Properties specific to the identity provider.  Properties specific to the identity provider.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdpSignRequestEnabled

Properties specific to the identity provider.  Properties specific to the identity provider.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdpUrl

Properties specific to the identity provider.  Properties specific to the identity provider.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdpVerificationCertificate

Properties specific to the identity provider.  Properties specific to the identity provider.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ManagementTrustOtherSamlSpsInFleet

Set to `$True` to let this array trust SAML2 service providers configured on the other members of its fleet, so a single identity provider registration covers the whole fleet.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name

Performs the operation on the unique name specified. For example, `name01`. Enter multiple names.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -SpDecryptionCredentialName

Properties specific to the service provider.  Properties specific to the service provider.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SpEntityId

The SAML2 entity ID that identifies this array to the identity provider.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SpSigningCredentialName

Properties specific to the service provider.  Properties specific to the service provider.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -XRequestID

(REST API 2.3+) Supplied by client during request or generated by server.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### String

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Get-Pfa2SsoSaml2](Get-Pfa2SsoSaml2.md)

[Remove-Pfa2SsoSaml2](Remove-Pfa2SsoSaml2.md)

[Update-Pfa2SsoSaml2](Update-Pfa2SsoSaml2.md)
