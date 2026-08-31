---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Connect-Pfa2Array

## SYNOPSIS

Connect to an array

## SYNTAX

### Certificate
```
Connect-Pfa2Array -Endpoint <String> -Username <String> -Issuer <String> -ClientId <String> -KeyId <String>
 -PrivateKeyFile <String> [-PrivateKeyPassword <SecureString>] [-ApiVersion <String>] [-IgnoreCertificateError]
 [-DisableVerbosePhoneHomeLogging] [-HttpTimeout <Int32>]
 [<CommonParameters>]
```

### Credential
```
Connect-Pfa2Array -Endpoint <String> [-Username <String>] [-ApiVersion <String>] -Password <SecureString>
 [-Credential <PSCredential>] [-IgnoreCertificateError] [-DisableVerbosePhoneHomeLogging]
 [-HttpTimeout <Int32>] [<CommonParameters>]
```

### PSCredential
```
Connect-Pfa2Array -Endpoint <String> [-ApiVersion <String>] -Credential <PSCredential>
 [-IgnoreCertificateError] [-DisableVerbosePhoneHomeLogging] [-HttpTimeout <Int32>] [<CommonParameters>]
```

### ApiToken
```
Connect-Pfa2Array -Endpoint <String> [-ApiVersion <String>] -ApiToken <String> [-IgnoreCertificateError]
 [-DisableVerbosePhoneHomeLogging] [-HttpTimeout <Int32>]
 [<CommonParameters>]
```

## DESCRIPTION

Connect to an array (using supported authentication method) and get an access token. For information of setting global PureStoragePowerShellSDK2 options, run `Help about_Pfa2Configuration`.

## EXAMPLES

### Example 1
```powershell
$FlashArray = Connect-Pfa2Array -Endpoint 'flasharray-01.example.com' -Credential (Get-Credential) -IgnoreCertificateError
```

Connects to a FlashArray with a username and password and stores the session in $FlashArray. -IgnoreCertificateError allows a self-signed array certificate. The session is cached for the life of the PowerShell session, so -Array is optional on later cmdlets.

### Example 2
```powershell
$FlashArray = Connect-Pfa2Array -Endpoint 'flasharray-01.example.com' -ApiToken $ApiToken -IgnoreCertificateError
```

Connects using an API token instead of a credential. Create a token for an account with New-Pfa2AdminApiToken.

### Example 3
```powershell
$FlashArray = Connect-Pfa2Array -Endpoint 'flasharray-01.example.com' -Username 'pureuser' -Issuer 'automation-client' -ClientId $ApiClient.Id -KeyId $ApiClient.KeyId -PrivateKeyFile 'C:\keys\automation-client.pem' -PrivateKeyPassword $KeyPassword -IgnoreCertificateError
```

Connects with OAuth2, using an API client registered by New-Pfa2ApiClient and the matching private key. OAuth2 is the only authentication method accepted by REST API versions 2.0 and 2.1.

### Example 4
```powershell
$FlashArray = Connect-Pfa2Array -Endpoint 'flasharray-01.example.com' -Credential $Credential -ApiVersion '2.44' -HttpTimeout 60000
```

Pins the session to REST API version 2.44 and raises the per-request HTTP timeout to 60 seconds. For the global equivalents, run `Help about_Pfa2Configuration`.

## PARAMETERS

### -ApiToken

API token for a user.

```yaml
Type: String
Parameter Sets: ApiToken
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

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

### -ClientId

Client ID of the API client that issues the identity token.

```yaml
Type: String
Parameter Sets: Certificate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Credential

The credentials for the FlashArray login

```yaml
Type: PSCredential
Parameter Sets: Credential
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: PSCredential
Parameter Sets: PSCredential
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DisableVerbosePhoneHomeLogging

Disables phone home logging of Pure Storage PowerShell SDK activity on the FlashArray

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Endpoint

The FlashArray name or IP address

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HttpTimeout

Sets the timeout value for the HTTP requests for this connection. The default is 30000ms (30 seconds). For information of setting global PureStoragePowerShellSDK2 options, run `Help about_Pfa2Configuration`.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreCertificateError

Prevents certificate errors such as an unknown certificate issuer or non-matching names from causing the request to fail.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Issuer

The name of the identity provider that will be issuing ID Tokens for this API client. This string represents the JWT iss (issuer) claim in ID Tokens issued for this API client.

```yaml
Type: String
Parameter Sets: Certificate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyId

Key ID of the API client that issues the identity token.

```yaml
Type: String
Parameter Sets: Certificate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password

Password associated with the login name of the array user.

```yaml
Type: SecureString
Parameter Sets: Credential
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateKeyFile

Local file path for the PEM encoded private key certificate.

```yaml
Type: String
Parameter Sets: Certificate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PrivateKeyPassword

Password, if any, for the PEM encoded private key certificate.

```yaml
Type: SecureString
Parameter Sets: Certificate
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Username

Login name of the array user for whom the token should be issued. This must be a valid user in the system.

```yaml
Type: String
Parameter Sets: Certificate
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: Credential
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

### None

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Disconnect-Pfa2Array](Disconnect-Pfa2Array.md)

[Get-Pfa2Array](Get-Pfa2Array.md)

[Remove-Pfa2Array](Remove-Pfa2Array.md)

[Update-Pfa2Array](Update-Pfa2Array.md)
