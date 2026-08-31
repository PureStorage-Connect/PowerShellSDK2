---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2PolicyNfs

## SYNOPSIS

(REST API 2.3+) Modify NFS policies

## SYNTAX

```
Update-Pfa2PolicyNfs [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>] [-PolicyName <String>]
 [-Enabled <Boolean>] [-NfsVersion <List[String]>]
 [-Security <List[String]>] [-UserMappingEnabled <Boolean>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies one or more NFS policies. To enable a policy, set `Enabled=$True`. To disable a policy, set `Enabled=$False`. To rename a policy, set `PolicyName` to the new name. The `Id` or `Name` parameter is required, but they cannot be set together.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2PolicyNfs -Array $FlashArray -Name 'nfs-default' -Enabled $true
```

Sets -Enabled on the NFS policy named 'nfs-default'.

### Example 2
```powershell
Update-Pfa2PolicyNfs -Array $FlashArray -Name 'nfs-default' -PolicyName 'nfs-default'
```

Sets -PolicyName on the NFS policy named 'nfs-default'.

### Example 3
```powershell
Update-Pfa2PolicyNfs -Array $FlashArray -Name 'nfs-default' -NfsVersion 'nfsv4'
```

Sets -NfsVersion on the NFS policy named 'nfs-default'.

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

### -Enabled

If set to `$True`, enables the policy. If set to `$False`, disables the policy.

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

### -Id

Performs the operation on the unique resource IDs specified. Enter multiple resource IDs. The `Id` or `Name` parameter is required, but they cannot be set together.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: Ids

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

### -NfsVersion

NFS protocol version allowed for the export to set for the policy. This operation updates all rules of the specified policy. Valid values are `nfsv3` and `nfsv4`.

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

### -PolicyName

The new name for the resource.

```yaml
Type: String
Parameter Sets: (All)
Aliases: PolicyNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Security

The security flavors to use for accessing files on this mount point. Values include `auth_sys`, `krb5`, `krb5i`, and `krb5p`. If the server does not support the requested flavor, the mount operation fails. This operation updates all rules of the specified policy. If `auth_sys`, the client is trusted to specify the identity of the user. If `krb5`, cryptographic proof of the identity of the user is provided in each RPC request. This provides strong verification of the identity of users accessing data on the server. Note that additional configuration besides adding this mount option is required to enable Kerberos security. If `krb5i`, integrity checking is added to krb5. This ensures the data has not been tampered with. If `krb5p`, integrity checking and encryption is added to `krb5`. This is the most secure setting, but it also involves the most performance overhead.

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

### -UserMappingEnabled

(REST API 2.15+) If set to `$True`, FlashArray queries the joined AD/OpenLDAP server to find the user corresponding to the incoming UID. If set to `$False`, users are defined by UID/GID pair.

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

[Get-Pfa2PolicyNfs](Get-Pfa2PolicyNfs.md)

[New-Pfa2PolicyNfs](New-Pfa2PolicyNfs.md)

[Remove-Pfa2PolicyNfs](Remove-Pfa2PolicyNfs.md)
