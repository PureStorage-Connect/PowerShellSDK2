---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2ProtectionGroup

## SYNOPSIS

(REST API 2.1+) Create a protection group and upsert tags

## SYNTAX

```
New-Pfa2ProtectionGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-Name <String>] [-Overwrite <Boolean>]
 [-SourceId <List[String]>]
 [-SourceName <List[String]>]
 [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a protection group on the local array for asynchronous replication. For more information of creating volumes under SafeMode, run `Get-Help About_Pfa2Safemode`

## EXAMPLES

### Example 1
```powershell
New-Pfa2ProtectionGroup -Array $FlashArray -Name $ProtectionGroupName
```

Create a protection group on FlashArray with name $ProtectionGroupName.

### Example 2
```powershell
New-Pfa2ProtectionGroup -Array $FlashArray -Name 'db-daily-pg' -SourceName 'db-daily-pg' -Overwrite $true
```

Creates a protection group and sets -SourceName and -Overwrite in the same call.

### Example 3
```powershell
New-Pfa2ProtectionGroup -Array $FlashArray -Name 'db-daily-pg' -TagKey 'environment' -TagValue 'production'
```

Creates a protection group and applies the tag `environment=production`.

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

### -Overwrite

If set to `$True`, overwrites an existing object during an object copy operation. If set to `$False` or not set at all and the target name is an existing object, the copy operation fails. Required if the `source` body parameter is set and the source overwrites an existing object during the copy operation.

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

### -SourceId

The id of the protection group or protection group snapshot to be copied into a new or existing protection group. If the destination protection group and all of its volumes already exist, include the `Overwrite` parameter to overwrite all of the existing volumes with the snapshot contents. If including the `Overwrite` parameter, the names of the volumes that are being overwritten must match the names of the volumes that are being restored. If the source is a protection group, the latest snapshot of the protection group will be used as the source during the copy operation.

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

The name of the protection group or protection group snapshot to be copied into a new or existing protection group. If the destination protection group and all of its volumes already exist, include the `Overwrite` parameter to overwrite all of the existing volumes with the snapshot contents. If including the `Overwrite` parameter, the names of the volumes that are being overwritten must match the names of the volumes that are being restored. If the source is a protection group, the latest snapshot of the protection group will be used as the source during the copy operation.

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

### -TagCopyable

Specifies whether or not to include the tag when copying the parent resource. If set to `$True`, the tag is included in resource copying. If set to `$False`, the tag is not included. If not specified, defaults to `$True`.

reference: Tag

```yaml
Type: List[Boolean]
Parameter Sets: (All)
Aliases: TagsCopyable

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TagKey

Key of the tag. Supports up to 64 Unicode characters.

reference: Tag

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: TagsKey

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TagNamespace

Optional namespace of the tag. Namespace identifies the category of the tag. Omitting the namespace defaults to the namespace `default`. The `pure*` namespaces are reserved for plugins and integration partners. It is recommended that customers avoid using reserved namespaces.

reference: Tag

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: TagsNamespace

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TagValue

Value of the tag. Supports up to 256 Unicode characters.

reference: Tag

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: TagsValue

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

[Get-Pfa2ProtectionGroup](Get-Pfa2ProtectionGroup.md)

[Remove-Pfa2ProtectionGroup](Remove-Pfa2ProtectionGroup.md)

[Update-Pfa2ProtectionGroup](Update-Pfa2ProtectionGroup.md)
