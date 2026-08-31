---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2PolicyNfsClientRule

## SYNOPSIS

(REST API 2.3+) Create NFS client policy rules

## SYNTAX

```
New-Pfa2PolicyNfsClientRule [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-RulesAccess <List[String]>]
 [-RulesAnongid <List[String]>]
 [-RulesAnonuid <List[String]>]
 [-RulesClient <List[String]>]
 [-RulesNfsVersion <List[List]>]
 [-RulesPermission <List[String]>]
 [-RulesSecurity <List[List]>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates one or more NFS client policy rules. The `PolicyId` or `PolicyName` parameter is required, but cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2PolicyNfsClientRule -Array $FlashArray -PolicyName 'nfs-default' -RulesClient '10.0.0.0/24' -RulesPermission 'rw' -RulesAccess 'root-squash'
```

Adds a client rule granting read-write access to a subnet with root squashed.

### Example 2
```powershell
New-Pfa2PolicyNfsClientRule -Array $FlashArray -PolicyName 'nfs-default' -RulesClient '10.0.1.0/24' -RulesPermission 'ro' -RulesAccess 'root-squash' -RulesNfsVersion 'nfsv4' -RulesSecurity 'sys'
```

Adds a read-only NFSv4 rule for a second subnet. The -Rules* parameters are parallel lists, so a rule is assembled from the values at the same position.

### Example 3
```powershell
New-Pfa2PolicyNfsClientRule -Array $FlashArray -PolicyName 'nfs-default' -RulesAccess 'root-squash' -RulesAnongid 65534
```

Creates an NFS policy client rule on the array.

### Example 4
```powershell
New-Pfa2PolicyNfsClientRule -Array $FlashArray -PolicyName 'nfs-default'
```

Creates an NFS policy client rule specifying only -PolicyName.

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

### -ContextName

Performs the operation on the context specified. If specified, the context names must be an array of size 1, and the single element must be the name of an array in the same fleet. If not specified, the context will default to the array that received this request.  Other parameters provided with the request, such as names of volumes or snapshots, are resolved relative to the provided `context`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ContextNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyId

Performs the operation on the unique policy IDs specified. Enter multiple policy IDs. The `PolicyId` or `PolicyName` parameter is required, but they cannot be set together.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: PolicyIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyName

Performs the operation on the policy names specified. Enter multiple policy names. For example, `name01,name02`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: PolicyNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RulesAccess

Specifies access control for the export. Valid values include `root-squash`, `all-squash`, and `no-root-squash`. The value `root-squash` prevents client users and groups with root privilege from mapping their root privilege to a file system. All users with UID 0 will have their UID mapped to `RulesAnonuid`. All users with GID 0 will have their GID mapped to `RulesAnongid`. The value `all-squash` maps all UIDs (including root) to `RulesAnonuid` and all GIDs (including root) to `RulesAnongid`. The value `no-root-squash` allows users and groups to access the file system with their UIDs and GIDs. If not specified, the default value is `root-squash`.

reference: PolicyrulenfsclientpostRules

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

### -RulesAnongid

Any user whose GID is affected by an `RulesAccess` of `root_squash` or `all_squash` will have their GID mapped to `RulesAnongid`. The default `RulesAnongid` is null, which means 65534. Use "" to clear. This value is ignored when user mapping is enabled.

reference: PolicyrulenfsclientpostRules

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

### -RulesAnonuid

Any user whose UID is affected by an `RulesAccess` of `root_squash` or `all_squash` will have their UID mapped to `RulesAnonuid`. The default `RulesAnonuid` is null, which means 65534. Use "" to clear.

reference: PolicyrulenfsclientpostRules

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

### -RulesClient

Specifies which clients are given access. Valid values include `IP`, `IP mask`, or `hostname`. The default is `*` if not specified.

reference: PolicyrulenfsclientpostRules

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

### -RulesNfsVersion

NFS protocol version allowed for the export. Valid values are `nfsv3` and `nfsv4`. If not specified, defaults to `nfsv3`.

reference: PolicyrulenfsclientpostRules

```yaml
Type: List[List]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RulesPermission

Specifies which read-write client access permissions are allowed for the export. Values include `rw` and `ro`. The default value is `rw` if not specified.

reference: PolicyrulenfsclientpostRules

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

### -RulesSecurity

The security flavors to use for accessing files on this mount point. Values include `auth_sys`, `krb5`, `krb5i`, and `krb5p`. If the server does not support the requested flavor, the mount operation fails. This operation updates all rules of the specified policy. If `auth_sys`, the client is trusted to specify the identity of the user. If `krb5`, cryptographic proof of the identity of the user is provided in each RPC request. This provides strong verification of the identity of users accessing data on the server. Note that additional configuration besides adding this mount option is required to enable Kerberos security. If `krb5i`, integrity checking is added to krb5. This ensures the data has not been tampered with. If `krb5p`, integrity checking and encryption is added to krb5. This is the most secure setting, but it also involves the most performance overhead.

reference: PolicyrulenfsclientpostRules

```yaml
Type: List[List]
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

### None

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Get-Pfa2PolicyNfsClientRule](Get-Pfa2PolicyNfsClientRule.md)

[Remove-Pfa2PolicyNfsClientRule](Remove-Pfa2PolicyNfsClientRule.md)

[Update-Pfa2PolicyNfsClientRule](Update-Pfa2PolicyNfsClientRule.md)
