---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2ProtectionGroup

## SYNOPSIS

(REST API 2.1+) Modify a protection group

## SYNTAX

```
Update-Pfa2ProtectionGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>] [-ProtectionGroupName <String>]
 [-Destroyed <Boolean>] [-RetentionLock <String>] [-ReplicationScheduleAt <Int64>]
 [-ReplicationScheduleEnabled <Boolean>] [-ReplicationScheduleFrequency <Int64>] [-SnapshotScheduleAt <Int64>]
 [-SnapshotScheduleEnabled <Boolean>] [-SnapshotScheduleFrequency <Int64>] [-SourceRetentionAllForSec <Int32>]
 [-SourceRetentionDays <Int32>] [-SourceRetentionPerDay <Int32>] [-SourceRetentionPerPeriod <Int32>]
 [-SourceRetentionPeriodLengthMs <Int64>] [-TargetRetentionAllForSec <Int32>] [-TargetRetentionDays <Int32>]
 [-TargetRetentionPerDay <Int32>] [-TargetRetentionPerPeriod <Int32>] [-TargetRetentionPeriodLengthMs <Int64>]
 [-ReplicationScheduleBlackoutEnd <Int64>] [-ReplicationScheduleBlackoutStart <Int64>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies the protection group schedules to generate and replicate snapshots to another array or to an external storage system. Renames or destroys a protection group.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2ProtectionGroup -Array $FlashArray -Name 'db-daily-pg' -SnapshotScheduleEnabled $true -SnapshotScheduleFrequency 3600000
```

Enables the snapshot schedule and sets it to run every hour. Schedule values are in milliseconds.

### Example 2
```powershell
Update-Pfa2ProtectionGroup -Array $FlashArray -Name 'db-daily-pg' -SourceRetentionAllForSec 86400 -SourceRetentionDays 7
```

Keeps all snapshots for 24 hours, then one per day for 7 days.

### Example 3
```powershell
Update-Pfa2ProtectionGroup -Array $FlashArray -Name 'db-daily-pg' -Destroyed $true
```

Destroys the protection group. It enters the eradication pending state and can be recovered with `-Destroyed $false`.

### Example 4
```powershell
Update-Pfa2ProtectionGroup -Array $FlashArray -Name $ProtectionGroupName -ProtectionGroupName $NewProtectionGroupName
```

Update the name of protection group from $ProtectionGroupName to $NewProtectionGroupName.

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

### -Destroyed

Has this protection group been destroyed? To destroy a protection group, patch to `$True`. To recover a destroyed protection group, patch to `$False`. If not specified, defaults to `$False`.

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

### -ProtectionGroupName

A user-specified name. The name must be locally unique and can be changed.

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

### -ReplicationScheduleAt

(REST API 2.3+) The schedule settings for asynchronous replication. The schedule settings for asynchronous replication.

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

### -ReplicationScheduleBlackoutEnd

(REST API 2.3+) The schedule settings for asynchronous replication. The schedule settings for asynchronous replication. The schedule settings for asynchronous replication. The schedule settings for asynchronous replication.

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

### -ReplicationScheduleBlackoutStart

(REST API 2.3+) The schedule settings for asynchronous replication. The schedule settings for asynchronous replication. The schedule settings for asynchronous replication. The schedule settings for asynchronous replication.

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

### -ReplicationScheduleEnabled

(REST API 2.3+) The schedule settings for asynchronous replication. The schedule settings for asynchronous replication.

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

### -ReplicationScheduleFrequency

(REST API 2.3+) The schedule settings for asynchronous replication. The schedule settings for asynchronous replication.

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

### -RetentionLock

(REST API 2.13+) The valid values are `ratcheted` and `unlocked`. The default value for a newly created protection group is `unlocked`. Set `RetentionLock` to `ratcheted` to enable SafeMode restrictions on the protection group. Contact Pure Technical Services to change `RetentionLock` to `unlocked`.

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

### -SnapshotScheduleAt

(REST API 2.3+) The schedule settings for protection group snapshots. The schedule settings for protection group snapshots.

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

### -SnapshotScheduleEnabled

(REST API 2.3+) The schedule settings for protection group snapshots. The schedule settings for protection group snapshots.

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

### -SnapshotScheduleFrequency

(REST API 2.3+) The schedule settings for protection group snapshots. The schedule settings for protection group snapshots.

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

### -SourceRetentionAllForSec

(REST API 2.3+) The retention policy for the source array of the protection group.  The retention policy for the source array of the protection group.

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

### -SourceRetentionDays

(REST API 2.3+) The retention policy for the source array of the protection group.  The retention policy for the source array of the protection group.

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

### -SourceRetentionPerDay

(REST API 2.3+) The retention policy for the source array of the protection group.  The retention policy for the source array of the protection group.

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

### -SourceRetentionPeriodLengthMs

The retention policy for the source array of the protection group.  The retention policy for the source array of the protection group.

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

### -SourceRetentionPerPeriod

The retention policy for the source array of the protection group.  The retention policy for the source array of the protection group.

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

### -TargetRetentionAllForSec

(REST API 2.3+) The retention policy for the target(s) of the protection group.  The retention policy for the target(s) of the protection group.

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

### -TargetRetentionDays

(REST API 2.3+) The retention policy for the target(s) of the protection group.  The retention policy for the target(s) of the protection group.

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

### -TargetRetentionPerDay

(REST API 2.3+) The retention policy for the target(s) of the protection group.  The retention policy for the target(s) of the protection group.

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

### -TargetRetentionPeriodLengthMs

The retention policy for the target(s) of the protection group.  The retention policy for the target(s) of the protection group.

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

### -TargetRetentionPerPeriod

The retention policy for the target(s) of the protection group.  The retention policy for the target(s) of the protection group.

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

[New-Pfa2ProtectionGroup](New-Pfa2ProtectionGroup.md)

[Remove-Pfa2ProtectionGroup](Remove-Pfa2ProtectionGroup.md)
