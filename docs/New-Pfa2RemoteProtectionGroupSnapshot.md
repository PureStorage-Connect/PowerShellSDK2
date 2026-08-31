---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2RemoteProtectionGroupSnapshot

## SYNOPSIS

(REST API 2.4+) Create remote protection group snapshot and tags

## SYNTAX

```
New-Pfa2RemoteProtectionGroupSnapshot [-Array <Rest2Api>] [-XRequestID <String>] [-AllowThrottle <Boolean>]
 [-ApplyRetention <Boolean>] [-ContextName <List[String]>]
 [-ConvertSourceToBaseline <Boolean>] [-ForReplication <Boolean>]
 [-Id <List[String]>] [-Name <String>] [-On <String>]
 [-Replicate <Boolean>] [-ReplicateNow <Boolean>]
 [-SourceId <List[String]>]
 [-SourceName <List[String]>] [-Destroyed <Boolean>] [-Suffix <String>]
 [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates remote protection group snapshots.

## EXAMPLES

### Example 1
```powershell
New-Pfa2RemoteProtectionGroupSnapshot -Array $FlashArray -SourceName 'array2:db-daily-pg'
```

Takes a remote protection group snapshot of 'array2:db-daily-pg' using an array-generated suffix.

### Example 2
```powershell
New-Pfa2RemoteProtectionGroupSnapshot -Array $FlashArray -SourceName 'array2:db-daily-pg' -Suffix 'daily'
```

Takes a remote protection group snapshot of 'array2:db-daily-pg' with the suffix `daily`, producing 'array2:db-daily-pg.daily'.

### Example 3
```powershell
New-Pfa2RemoteProtectionGroupSnapshot -Array $FlashArray -SourceName 'array2:db-daily-pg' -Suffix 'daily' -ReplicateNow $true
```

Takes a remote protection group snapshot and replicates it to the configured targets immediately instead of waiting for the schedule.

### Example 4
```powershell
New-Pfa2RemoteProtectionGroupSnapshot -Array $FlashArray -SourceName 'array2:db-daily-pg', 'array3:db-daily-pg' -Suffix 'daily'
```

Takes a consistent remote protection group snapshot of several sources at once.

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

### -ApplyRetention

If `$True`, applies the local and remote retention policy to the snapshots.

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

### -ConvertSourceToBaseline

Set to `$True` to have the snapshot be eradicated when it is no longer baseline on source.

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

### -Destroyed

Destroyed and pending eradication? If not specified, defaults to $False.

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

### -ForReplication

If `$True`, destroys and eradicates the snapshot after 1 hour.

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

### -Replicate

If set to `$True`, queues up and begins replicating to each allowed target after all earlier replication sessions for the same protection group have been completed to that target. The `Replicate` and `ReplicateNow` parameters cannot be used together.

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

### -ReplicateNow

If set to `$True`, replicates the snapshots to each allowed target. The `Replicate` and `ReplicateNow` parameters cannot be used together.

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

The suffix that is appended to the `source_name` value to generate the full remote protection group snapshot name in the form `PGROUP.SUFFIX`. If the suffix is not specified, the system constructs the snapshot name in the form `PGROUP.NNN`, where `PGROUP` is the protection group name, and `NNN` is a monotonically increasing number.

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

### String

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Get-Pfa2RemoteProtectionGroupSnapshot](Get-Pfa2RemoteProtectionGroupSnapshot.md)

[Remove-Pfa2RemoteProtectionGroupSnapshot](Remove-Pfa2RemoteProtectionGroupSnapshot.md)

[Update-Pfa2RemoteProtectionGroupSnapshot](Update-Pfa2RemoteProtectionGroupSnapshot.md)
