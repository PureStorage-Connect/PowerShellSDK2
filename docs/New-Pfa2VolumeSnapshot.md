---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2VolumeSnapshot

## SYNOPSIS

(REST API 2.0+) Create a volume snapshot and tags

## SYNTAX

```
New-Pfa2VolumeSnapshot [-Array <Rest2Api>] [-XRequestID <String>] [-AllowThrottle <Boolean>]
 [-ContextName <List[String]>] [-On <String>]
 [-SourceId <List[String]>]
 [-SourceName <List[String]>] [-Destroyed <Boolean>] [-Suffix <String>]
 [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a point-in-time snapshot of the contents of a volume. The `SourceId` or `SourceName` parameter is required, but they cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2VolumeSnapshot -Array $FlashArray -SourceName 'db-vol-01' -Suffix 'daily'
```

Takes a snapshot of db-vol-01 named db-vol-01.daily.

### Example 2
```powershell
New-Pfa2VolumeSnapshot -Array $FlashArray -SourceName 'db-vol-01', 'db-vol-02' -Suffix 'daily'
```

Snapshots several volumes in one call, giving each snapshot the same suffix.

### Example 3
```powershell
Get-Pfa2Volume -Array $FlashArray | Where-Object { $_.VolumeGroup.Name -eq 'sql-vg' } | ForEach-Object { New-Pfa2VolumeSnapshot -Array $FlashArray -SourceName $_.Name -Suffix 'daily' }
```

Snapshots every volume in a volume group.

### Example 4
```powershell
New-Pfa2VolumeSnapshot -Array $FlashArray -SourceName 'db-vol-01' -Suffix 'offload' -On 'nfs-offload'
```

Takes a snapshot directly onto an offload target.

## PARAMETERS

### -AllowThrottle

If set to `$True`, allows snapshot to fail if array health is not optimal.

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

### -Destroyed

If set to `$True`, destroys a resource. Once set to `$True`, the `TimeRemaining` value will display the amount of time left until the destroyed resource is permanently eradicated. Before the `TimeRemaining` period has elapsed, the destroyed resource can be recovered by setting `Destroyed=$False`. Once the `TimeRemaining` period has elapsed, the resource is permanently eradicated and can no longer be recovered.

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

### -On

Performs the operation on the target name specified. For example, `targetName01`.

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

### -SourceId

Performs the operation on the source ID specified. Enter multiple source IDs.

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

Performs the operation on the source name specified. Enter multiple source names. For example, `name01,name02`.

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

### -Suffix

The suffix that is appended to the `source_name` value to generate the full volume snapshot name in the form `VOL.SUFFIX`. If the suffix is not specified, the system constructs the snapshot name in the form `VOL.NNN`, where `VOL` is the volume name, and `NNN` is a monotonically increasing number.

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

### None

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Get-Pfa2VolumeSnapshot](Get-Pfa2VolumeSnapshot.md)

[Remove-Pfa2VolumeSnapshot](Remove-Pfa2VolumeSnapshot.md)

[Update-Pfa2VolumeSnapshot](Update-Pfa2VolumeSnapshot.md)
