---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2ProtectionGroupSnapshot

## SYNOPSIS

(REST API 2.1+) Create a protection group snapshot and create tags.

## SYNTAX

```
New-Pfa2ProtectionGroupSnapshot [-Array <Rest2Api>] [-XRequestID <String>] [-AllowThrottle <Boolean>]
 [-ApplyRetention <Boolean>] [-ContextName <List[String]>]
 [-ForReplication <Boolean>] [-Replicate <Boolean>] [-ReplicateNow <Boolean>]
 [-SourceId <List[String]>]
 [-SourceName <List[String]>] [-Destroyed <Boolean>] [-Suffix <String>]
 [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a point-in-time snapshot of the contents of a protection group. The `SourceId` or `SourceName` parameter is required, but they cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2ProtectionGroupSnapshot -Array $FlashArray -SourceName 'db-daily-pg' -Suffix 'hourly'
```

Takes a crash-consistent snapshot of every member of the protection group.

### Example 2
```powershell
New-Pfa2ProtectionGroupSnapshot -Array $FlashArray -SourceName 'db-daily-pg' -Suffix 'hourly' -ReplicateNow $true
```

Takes a snapshot and starts replicating it to the configured targets at once rather than waiting for the replication schedule.

### Example 3
```powershell
New-Pfa2ProtectionGroupSnapshot -Array $FlashArray -SourceName 'db-daily-pg' -ApplyRetention $true
```

Takes a snapshot and applies the protection group retention policy to it, so it is expired automatically like a scheduled snapshot.

### Example 4
```powershell
New-Pfa2ProtectionGroupSnapshot -Array $FlashArray -SourceName $ProtectionGroupName
```

Create a new protection group snapshot for group $ProtectionGroupName on FlashArray.

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

### -Destroyed

(REST API 2.3+) Returns a value of `$True` if the protection group snapshot has been destroyed and is pending eradication. The `TimeRemaining` value displays the amount of time left until the destroyed snapshot is permanently eradicated. Before the `TimeRemaining` period has elapsed, the destroyed snapshot can be recovered by setting `Destroyed=$False`. Once the `TimeRemaining` period has elapsed, the snapshot is permanently eradicated and can no longer be recovered.

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

(REST API 2.4+) If `$True`, destroys and eradicates the snapshot after 1 hour.

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

### -Replicate

(REST API 2.4+) If set to `$True`, queues up and begins replicating to each allowed target after all earlier replication sessions for the same protection group have been completed to that target. The `Replicate` and `ReplicateNow` parameters cannot be used together.

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

(REST API 2.4+) If set to `$True`, replicates the snapshots to each allowed target. The `Replicate` and `ReplicateNow` parameters cannot be used together.

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

(REST API 2.3+) Performs the operation on the source ID specified. Enter multiple source IDs.

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

(REST API 2.3+) Performs the operation on the source name specified. Enter multiple source names. For example, `name01,name02`.

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

The name suffix appended to the protection group name to make up the full protection group snapshot name in the form `PGROUP.SUFFIX`. If `Suffix` is not specified, the protection group name is in the form `PGROUP.NNN`, where `NNN` is a unique monotonically increasing number. If multiple protection group snapshots are created at a time, the suffix name is appended to those snapshots.

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

[Get-Pfa2ProtectionGroupSnapshot](Get-Pfa2ProtectionGroupSnapshot.md)

[Remove-Pfa2ProtectionGroupSnapshot](Remove-Pfa2ProtectionGroupSnapshot.md)

[Update-Pfa2ProtectionGroupSnapshot](Update-Pfa2ProtectionGroupSnapshot.md)
