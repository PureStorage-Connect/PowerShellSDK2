---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2ArrayAuth

## SYNOPSIS

Create an API Client

## SYNTAX

### UserName
```
New-Pfa2ArrayAuth -Endpoint <String> -ApiClientName <String> -Issuer <String> -Username <String>
 -Password <SecureString> [-AccessTokenTtlMilliSeconds <Int64>] [-MaxRole <String>] [-Force]
 [-SshPublicKeyTimeoutMilliseonds <Int64>] [-SshPublicKeyResponseTimeoutInMilliseconds <Int64>] [<CommonParameters>]
```

### Credential
```
New-Pfa2ArrayAuth -Endpoint <String> -ApiClientName <String> -Issuer <String> -Credential <PSCredential>
 [-AccessTokenTtlMilliSeconds <Int64>] [-MaxRole <String>] [-Force] [-SshPublicKeyTimeoutMilliseonds <Int64>]
 [-SshPublicKeyResponseTimeoutInMilliseconds <Int64>] [<CommonParameters>]
```

## DESCRIPTION

Create an API Client registration on an array for OAuth2 authentication

## EXAMPLES

### Example 1
```powershell
New-Pfa2ArrayAuth -Endpoint $endpoint -ApiClientName $clientName -Issuer $issuer -Username $arrayUsername -Password $psw
```

Create a new API client on FlashArray. The $ClientName must be unique per API client.

### Example 2
```powershell
New-Pfa2ArrayAuth -Endpoint 'flasharray-01.example.com' -ApiClientName 'automation-client' -Issuer 'automation-client' -Username 'pureuser' -Password $SecurePassword -Credential $Credential
```

Creates an array authorization with only the required parameters supplied.

### Example 3
```powershell
New-Pfa2ArrayAuth -Endpoint 'flasharray-01.example.com' -ApiClientName 'automation-client' -Issuer 'automation-client' -Username 'pureuser' -Password $SecurePassword -Credential $Credential -AccessTokenTtlMilliSeconds 1 -MaxRole 'readonly'
```

Creates an array authorization and sets -AccessTokenTtlMilliSeconds and -MaxRole in the same call.

## PARAMETERS

### -AccessTokenTtlMilliSeconds

Access token time-to-live duration, in milliseconds.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ApiClientName

A user-specified name. The name must be locally unique and cannot be changed.

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

### -Credential

The credentials for the FlashArray login.

```yaml
Type: PSCredential
Parameter Sets: Credential
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Endpoint

The FlashArray name or IP address.

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

### -Force

Overwrites an existing ApiClient on the FlashArray if certificates are not found on the local machine.

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
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxRole

The maximum role allowed for ID Tokens issued by this API client. The bearer of an access token will be authorized to perform actions within the intersection of this MaxRole and the role of the array user specified as the JWT sub (subject) claim. Valid max_role values are readonly, ops_admin, array_admin, and storage_admin. Users with the readonly (Read Only) role can perform operations that convey the state of the array. Read Only users cannot alter the state of the array. Users with the ops_admin (Ops Admin) role can perform the same operations as Read Only users plus enable and disable remote assistance sessions. Ops Admin users cannot alter the state of the array. Users with the storage_admin (Storage Admin) role can perform the same operations as Read Only users plus storage related operations, such as administering volumes, hosts, and host groups. Storage Admin users cannot perform operations that deal with global and system configurations. Users with the array_admin (Array Admin) role can perform the same operations as Storage Admin users plus array-wide changes dealing with global and system configurations. In other words, Array Admin users can perform all operations.

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

### -Password

Password associated with the login name of the array user.

```yaml
Type: SecureString
Parameter Sets: UserName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SshPublicKeyResponseTimeoutInMilliseconds

Time to wait for response or error from pureapiclient create. Default is 1000ms

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SshPublicKeyTimeoutMilliseonds

Time to wait for the "Please enter public key" prompt from ssh. Default is 5000ms

```yaml
Type: Int64
Parameter Sets: (All)
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
Parameter Sets: UserName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Management.Automation.PSCredential

## OUTPUTS

### PureStorage.Rest.PureApiClientAuthInfo

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)
