---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2ApiClient

## SYNOPSIS

(REST API 2.1+) Create an API client

## SYNTAX

```
New-Pfa2ApiClient [-Array <Rest2Api>] [-XRequestID <String>] [-Name <String>] [-AccessTokenTtlInMs <Int64>]
 [-Issuer <String>] [-MaxRole <String>] [-PublicKey <String>]
 [-AccessPoliciesId <List[String]>]
 [-AccessPoliciesName <List[String]>]
 [-AccessPoliciesResourceType <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates an API client. Newly created API clients are disabled by default. Enable an API client through the `Update-Pfa2ApiClient` method. The `Name`, `Issuer`, and `PublicKey` parameters are required. The `access_policies` or `MaxRole` parameter is required, but they cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2ApiClient -Array $FlashArray -Name 'automation-client' -Issuer 'automation-client' -PublicKey $PublicKeyPem
```

Registers an API client for OAuth2 authentication. Pass the returned Id and KeyId to Connect-Pfa2Array along with the matching private key.

### Example 2
```powershell
New-Pfa2ApiClient -Array $FlashArray -Name 'automation-client' -Issuer 'automation-client' -PublicKey $PublicKeyPem -MaxRole 'readonly' -AccessTokenTtlInMs 86400000
```

Registers an API client capped at the readonly role with a 24-hour access token lifetime.

### Example 3
```powershell
New-Pfa2ApiClient -Array $FlashArray -MaxRole $MaxRole -Issuer $Issuer -PublicKey $Certificate -Name $ClientName
```

Create API client on FlashArray with maxrole as "array_admin" and name as $ClientName.

### Example 4
```powershell
New-Pfa2ApiClient -Array $FlashArray -Name 'automation-client'
```

Creates an API client named 'automation-client'.

## PARAMETERS

### -AccessPoliciesId

A globally unique, system-generated ID. The ID cannot be modified.

reference: ReferenceWithType

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccessPoliciesName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: ReferenceWithType

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccessPoliciesResourceType

Type of the object (full name of the endpoint). Valid values are `hosts`, `host-groups`, `network-interfaces`, `pods`, `ports`, `pod-replica-links`, `subnets`, `volumes`, `volume-snapshots`, `volume-groups`, `directories`, `policies/nfs`, `policies/smb`, and `policies/snapshot`, etc.

reference: ReferenceWithType

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccessTokenTtlInMs

The TTL (Time To Live) length of time for the exchanged access token. Measured in milliseconds. If not specified, defaults to `86400000`.

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

### -Issuer

The name of the identity provider that will be issuing ID Tokens for this API client. The `iss` claim in the JWT issued must match this string. If not specified, defaults to the API client name.

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

### -MaxRole

Deprecated. The maximum Admin Access Policy (previously 'role') allowed for ID Tokens issued by this API client. The bearer of an access token will be authorized to perform actions within the intersection of this policy and that of the array user specified as the JWT `sub` (subject) claim. `MaxRole` is deprecated in favor of `access_policies`, but remains for backwards compatibility. If `MaxRole` is the name of a valid legacy role, it will be interpreted as the corresponding access policy of the same name. Otherwise, it's invalid.

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

### -Name

Performs the operation on the unique name specified.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -PublicKey

The API client's PEM formatted (Base64 encoded) RSA public key. Include the `-----BEGIN PUBLIC KEY-----` and `-----END PUBLIC KEY-----` lines.

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

[Get-Pfa2ApiClient](Get-Pfa2ApiClient.md)

[Remove-Pfa2ApiClient](Remove-Pfa2ApiClient.md)

[Update-Pfa2ApiClient](Update-Pfa2ApiClient.md)
