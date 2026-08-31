---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2VolumeGroup

## SYNOPSIS

(REST API 2.1+) Modify a volume group

## SYNTAX

### Param (Default)
```
Update-Pfa2VolumeGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-DestroyContents <Boolean>]
 [-Id <List[String]>] [-Name <String>] [-VolumeGroupName <String>]
 [-Destroyed <Boolean>] [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>]
 [-QosBandwidthLimit <Int64>] [-QosIopsLimit <Int64>] [-ApiVersion <String>] [<CommonParameters>]
```

### X2
```
Update-Pfa2VolumeGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-DestroyContents <Boolean>]
 [-Id <List[String]>] [-Name <String>] [-VolumeGroupName <String>]
 [-Destroyed <Boolean>] [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>]
 -QosBandwidthLimit <Int64> [-QosIopsLimitReset] [-ApiVersion <String>]
 [<CommonParameters>]
```

### X1
```
Update-Pfa2VolumeGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-DestroyContents <Boolean>]
 [-Id <List[String]>] [-Name <String>] [-VolumeGroupName <String>]
 [-Destroyed <Boolean>] [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>]
 -QosIopsLimit <Int64> [-QosBandwidthLimitReset] [-ApiVersion <String>]
 [<CommonParameters>]
```

### ParamReset
```
Update-Pfa2VolumeGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-DestroyContents <Boolean>]
 [-Id <List[String]>] [-Name <String>] [-VolumeGroupName <String>]
 [-Destroyed <Boolean>] [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>]
 [-QosBandwidthLimitReset] [-QosIopsLimitReset] [-ApiVersion <String>]
 [<CommonParameters>]
```

## DESCRIPTION

Modifies a volume group. You can rename, destroy, recover, or set QoS limits for a volume group. To rename a volume group, set `VolumeGroupName` to the new name. To destroy a volume group, set `Destroyed=$True`. To recover a volume group that has been destroyed and is pending eradication, set `Destroyed=$False`. Sets the bandwidth and IOPS limits of a volume group through the respective `QosBandwidthLimit` and `QosIopsLimit` parameter. The `Id` or `Name` parameter is required, but they cannot be set together. Sets the priority adjustment for a volume group using the `PriorityAdjustmentOperator` and `PriorityAdjustmentValue` fields.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2VolumeGroup -Array $FlashArray -Name $VolGroup.name -Destroyed $true
```

Destroy a volume group $VolGroup.Name. (Volume group is not eradicated, see Remove-Pfa2VolumeGroup)

### Example 2
```powershell
Update-Pfa2VolumeGroup -Array $FlashArray -Name 'sql-vg' -VolumeGroupName 'sql-vg-renamed'
```

Renames the volume group 'sql-vg' to 'sql-vg-renamed'.

### Example 3
```powershell
Update-Pfa2VolumeGroup -Array $FlashArray -Name 'sql-vg' -QosBandwidthLimit 512MB
```

Sets -QosBandwidthLimit on the volume group named 'sql-vg'.

### Example 4
```powershell
Update-Pfa2VolumeGroup -Array $FlashArray -Name 'sql-vg' -QosIopsLimit 10000
```

Sets -QosIopsLimit on the volume group named 'sql-vg'.

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

### -DestroyContents

(REST API 2.3+) Set to `$True` to destroy contents (e.g., volumes, protection groups, snapshots) and containers (e.g., realms, pods, volume groups), including eradicating containers with content.

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

Returns a value of `$True` if the volume group has been destroyed and is pending eradication. Before the `TimeRemaining` period has elapsed, the destroyed volume group can be recovered by setting `Destroyed=$False`. After the `TimeRemaining` period has elapsed, the volume group is permanently eradicated and cannot be recovered.

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

(REST API 2.3+) Performs the operation on the unique resource IDs specified. Enter multiple resource IDs. The `Id` or `Name` parameter is required, but they cannot be set together.

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

### -PriorityAdjustmentOperator

(REST API 2.10+) Valid values are `+`, `-`, and `=`. The values `+` and `-` may be applied to volumes and volume groups to reflect the relative importance of their workloads. Volumes and volume groups can be assigned a priority adjustment of -10, 0, or +10. In addition, volumes can be assigned values of =-10, =0, or =+10. Volumes with settings of -10, 0, +10 can be modified by the priority adjustment setting of a volume group that contains the volume. However, if a volume has a priority adjustment set with the `=` operator (for example, =+10), it retains that value and is unaffected by any volume group priority adjustment settings.

```yaml
Type: String
Parameter Sets: (All)
Aliases: PriorityAdjustmentPriorityAdjustmentOperator

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PriorityAdjustmentValue

(REST API 2.10+) Adjust priority by the specified amount, using the `PriorityAdjustmentOperator`. Valid values are 0 and +10 for `+` and `-` operators, -10, 0, and +10 for the `=` operator.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: PriorityAdjustmentPriorityAdjustmentValue

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QosBandwidthLimit

(REST API 2.3+) The maximum QoS bandwidth limit for the volume. Whenever throughput exceeds the bandwidth limit, throttling occurs. Measured in bytes per second. Maximum limit is 512 GB/s.

minimum: 1048576

maximum: 549755813888

```yaml
Type: Int64
Parameter Sets: Param
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: Int64
Parameter Sets: X2
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QosBandwidthLimitReset

(REST API 2.3+) Resets the QosBandwidthLimit setting. There will be no maximum QoS bandwidth set for the volume group.

```yaml
Type: SwitchParameter
Parameter Sets: X1, ParamReset
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QosIopsLimit

(REST API 2.3+) The QoS IOPs limit for the volume.

minimum: 100

maximum: 100000000

```yaml
Type: Int64
Parameter Sets: Param
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: Int64
Parameter Sets: X1
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -QosIopsLimitReset

(REST API 2.3+) Resets the QosIopsLimit setting. There will be no maximum QoS IOPs set for the volume group.

```yaml
Type: SwitchParameter
Parameter Sets: X2, ParamReset
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeGroupName

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

[Get-Pfa2VolumeGroup](Get-Pfa2VolumeGroup.md)

[New-Pfa2VolumeGroup](New-Pfa2VolumeGroup.md)

[Remove-Pfa2VolumeGroup](Remove-Pfa2VolumeGroup.md)
