---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2ActiveDirectory

## SYNOPSIS

(REST API 2.3+) Create Active Directory account

## SYNTAX

```
New-Pfa2ActiveDirectory [-Array <Rest2Api>] [-XRequestID <String>] [-JoinExistingAccount <Boolean>]
 -Name <String> [-ComputerName <String>] [-DirectoryServer <List[String]>]
 [-Domain <String>] [-JoinOu <String>] [-KerberosServer <List[String]>]
 [-Password <SecureString>] [-Tls <String>] [-User <String>]
 [-SourceId <List[String]>]
 [-SourceName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates one or more Active Directory accounts. The `User` and `Password` provided are used to join the array to the specified `Domain`.

## EXAMPLES

### Example 1
```powershell
New-Pfa2ActiveDirectory -Array $FlashArray -Name 'ad-account-01'
```

Creates an Active Directory account with only the required parameters supplied.

### Example 2
```powershell
New-Pfa2ActiveDirectory -Array $FlashArray -Name 'ad-account-01' -Domain 'example.com' -JoinExistingAccount $true
```

Creates an Active Directory account and sets -Domain and -JoinExistingAccount in the same call.

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

### -ComputerName

The name of the computer account to be created in the Active Directory domain. If not specified, defaults to the name of the Active Directory configuration.

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

### -DirectoryServer

A list of directory servers used for lookups related to user authorization. Servers must be specified in FQDN format. All specified servers must be registered to the domain appropriately in the configured DNS of the array and are only communicated with over the secure LDAP (LDAPS) protocol. If not specified, servers are resolved for the domain in DNS.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: DirectoryServers

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Domain

The Active Directory domain to join.

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

### -JoinExistingAccount

(REST API 2.15+) If specified as `$True`, the domain is searched for a pre-existing computer account to join to, and no new account will be created within the domain. The `User` specified when joining a pre-existing account must have permissions to 'read all properties from' and 'reset the password of' the pre-existing account. `JoinOu` will be read from the pre-existing account and cannot be specified when joining to an existing account. If not specified, defaults to `$False`.

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

### -JoinOu

(REST API 2.8+) The distinguished name of the organizational unit in which the computer account should be created when joining the domain. The `DC=...` components of the distinguished name can be optionally omitted. If not specified, defaults to `CN=Computers`.

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

### -KerberosServer

A list of key distribution servers to use for Kerberos protocol. Servers must be specified in FQDN format. All specified servers must be registered to the domain appropriately in the configured DNS of the array. If not specified, servers are resolved for the domain in DNS.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: KerberosServers

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name

Performs the operation on the unique name specified. Enter multiple names. The name is expected to be fully qualified, meaning if the object is contained in some context, the corresponding name would provide complete information about the containment hierarchy. For example, `name01,pod01::name01`.

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

### -Password

The login password of the user with privileges to create the computer account in the domain. This is not persisted on the array.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceId

A globally unique, system-generated ID. The ID cannot be modified.

reference: Reference

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: SourceIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: Reference

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: SourceNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tls

(REST API 2.15+) TLS mode for communication with domain controllers. Valid values are `required` and `optional`. `required` forces TLS communication with a domain controller. `optional` allows the use of non-TLS communication, TLS will still be preferred, if available. If not specified, defaults to `required`.

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

### -User

The login name of the user with privileges to create the computer account in the domain. This is not persisted on the array.

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

[Get-Pfa2ActiveDirectory](Get-Pfa2ActiveDirectory.md)

[Remove-Pfa2ActiveDirectory](Remove-Pfa2ActiveDirectory.md)

[Update-Pfa2ActiveDirectory](Update-Pfa2ActiveDirectory.md)
