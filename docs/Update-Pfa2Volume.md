---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2Volume

## SYNOPSIS

(REST API 2.0+) Modify a volume

## SYNTAX

### Param (Default)
```
Update-Pfa2Volume [-Array <Rest2Api>] [-XRequestID <String>]
 [-AddToProtectionGroupIds <List[String]>]
 [-AddToProtectionGroupNames <List[String]>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>]
 [-RemoveFromProtectionGroupIds <List[String]>]
 [-RemoveFromProtectionGroupNames <List[String]>] [-Truncate <Boolean>]
 [-Destroyed <Boolean>] [-VolumeName <String>] [-Provisioned <Int64>] [-RequestedPromotionState <String>]
 [-PodId <String>] [-PodName <String>] [-PriorityAdjustmentOperator <String>]
 [-PriorityAdjustmentValue <Int32>] [-ProtocolEndpointContainerVersion <String>] [-QosBandwidthLimit <Int64>]
 [-QosIopsLimit <Int64>] [-VolumeGroupId <String>] [-VolumeGroupName <String>] [-WorkloadId <String>]
 [-WorkloadName <String>] [-ApiVersion <String>] [<CommonParameters>]
```

### X2
```
Update-Pfa2Volume [-Array <Rest2Api>] [-XRequestID <String>]
 [-AddToProtectionGroupIds <List[String]>]
 [-AddToProtectionGroupNames <List[String]>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>]
 [-RemoveFromProtectionGroupIds <List[String]>]
 [-RemoveFromProtectionGroupNames <List[String]>] [-Truncate <Boolean>]
 [-Destroyed <Boolean>] [-VolumeName <String>] [-Provisioned <Int64>] [-RequestedPromotionState <String>]
 [-PodId <String>] [-PodName <String>] [-PriorityAdjustmentOperator <String>]
 [-PriorityAdjustmentValue <Int32>] [-ProtocolEndpointContainerVersion <String>] -QosBandwidthLimit <Int64>
 [-QosIopsLimitReset] [-VolumeGroupId <String>] [-VolumeGroupName <String>] [-WorkloadId <String>]
 [-WorkloadName <String>] [-ApiVersion <String>] [<CommonParameters>]
```

### X1
```
Update-Pfa2Volume [-Array <Rest2Api>] [-XRequestID <String>]
 [-AddToProtectionGroupIds <List[String]>]
 [-AddToProtectionGroupNames <List[String]>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>]
 [-RemoveFromProtectionGroupIds <List[String]>]
 [-RemoveFromProtectionGroupNames <List[String]>] [-Truncate <Boolean>]
 [-Destroyed <Boolean>] [-VolumeName <String>] [-Provisioned <Int64>] [-RequestedPromotionState <String>]
 [-PodId <String>] [-PodName <String>] [-PriorityAdjustmentOperator <String>]
 [-PriorityAdjustmentValue <Int32>] [-ProtocolEndpointContainerVersion <String>] -QosIopsLimit <Int64>
 [-QosBandwidthLimitReset] [-VolumeGroupId <String>] [-VolumeGroupName <String>] [-WorkloadId <String>]
 [-WorkloadName <String>] [-ApiVersion <String>] [<CommonParameters>]
```

### ParamReset
```
Update-Pfa2Volume [-Array <Rest2Api>] [-XRequestID <String>]
 [-AddToProtectionGroupIds <List[String]>]
 [-AddToProtectionGroupNames <List[String]>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>]
 [-RemoveFromProtectionGroupIds <List[String]>]
 [-RemoveFromProtectionGroupNames <List[String]>] [-Truncate <Boolean>]
 [-Destroyed <Boolean>] [-VolumeName <String>] [-Provisioned <Int64>] [-RequestedPromotionState <String>]
 [-PodId <String>] [-PodName <String>] [-PriorityAdjustmentOperator <String>]
 [-PriorityAdjustmentValue <Int32>] [-ProtocolEndpointContainerVersion <String>] [-QosBandwidthLimitReset]
 [-QosIopsLimitReset] [-VolumeGroupId <String>] [-VolumeGroupName <String>] [-WorkloadId <String>]
 [-WorkloadName <String>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies a volume by renaming, destroying, or resizing it. To rename a volume, set `VolumeName` to the new name. To destroy a volume, set `Destroyed=$True`. To recover a volume that has been destroyed and is pending eradication, set `Destroyed=$False`. Set the bandwidth and IOPS limits of a volume through the respective `QosBandwidthLimit` and `QosIopsLimit` parameter. This moves the volume into a pod or volume group through the respective `pod` or `volume_group` parameter. The `Id` or `Name` parameter is required, but they cannot be set together.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2Volume -Array $FlashArray -Name 'db-vol-01' -Provisioned 2TB
```

Grows the volume to 2 TB. Growing a volume is non-disruptive.

### Example 2
```powershell
Update-Pfa2Volume -Array $FlashArray -Name 'db-vol-01' -Provisioned 512GB -Truncate $true
```

Shrinks the volume to 512 GB. -Truncate is required because truncating a volume discards the data beyond the new size.

### Example 3
```powershell
Update-Pfa2Volume -Array $FlashArray -Name 'db-vol-01' -Destroyed $true
```

Destroys the volume. It enters the eradication pending state and can be recovered with `-Destroyed $false` until that period expires. To eradicate it immediately, use Remove-Pfa2Volume -Eradicate.

### Example 4
```powershell
Update-Pfa2Volume -Array $FlashArray -Name 'db-vol-01' -VolumeGroupName 'sql-vg'
```

Moves the volume into volume group sql-vg. Pass an empty string to remove it from its current group.

## PARAMETERS

### -AddToProtectionGroupIds

The volumes will be added to the specified protection groups along with creation or movement across pods and array. When a volume is moved, the specified protection groups must be in the target pod or array. Enter multiple ids.

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

### -AddToProtectionGroupNames

The volumes will be added to the specified protection groups along with creation or movement across pods and array. When a volume is moved, the specified protection groups must be in the target pod or array. Enter multiple names in a comma-separated format.

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

### -PodId

(REST API 2.3+) Moves the volume into the specified pod.

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

### -PodName

(REST API 2.3+) Moves the volume into the specified pod.

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

### -PriorityAdjustmentOperator

(REST API 2.10+) Adjusts volume priority. Adjusts volume priority.

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

(REST API 2.10+) Adjusts volume priority. Adjusts volume priority.

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

### -ProtocolEndpointContainerVersion

Sets the properties that are specific to protocol endpoints. This can only be used in conjunction to `subtype=protocol_endpoint`.  Sets the properties that are specific to protocol endpoints. This can only be used in conjunction to `subtype=protocol_endpoint`.

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

### -Provisioned

Updates the virtual size of the volume, measured in bytes.

maximum: 4503599627370496

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

### -QosBandwidthLimit

(REST API 2.3+) Sets QoS limits. Sets QoS limits.

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

(REST API 2.3+) Resets the QosBandwidthLimit setting. There will be no maximum QoS bandwidth set for the volume.

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

(REST API 2.3+) Sets QoS limits. Sets QoS limits.

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

(REST API 2.3+) Resets the QosIopsLimit setting. There will be no maximum QoS IOPs set for the volume.

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

### -RemoveFromProtectionGroupIds

The volumes will be removed from the specified protection groups in the source pod or array along with the move. This can only be used when moving volumes across pods and arrays and must include all protection groups that the volumes are members of before the move. Enter multiple ids in a comma-separated format.

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

### -RemoveFromProtectionGroupNames

The volumes will be removed from the specified protection groups in the source pod or array along with the move. This can only be used when moving volumes across pods and arrays and must include all protection groups that the volumes are members of before the move. Enter multiple names in a comma-separated format.

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

### -RequestedPromotionState

(REST API 2.2+) Valid values are `promoted` and `demoted`. Patch `RequestedPromotionState` to `demoted` to demote the volume so that the volume stops accepting write requests. Patch `RequestedPromotionState` to `promoted` to promote the volume so that the volume starts accepting write requests.

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

### -Truncate

If set to `$True`, reduces the size of a volume during a volume resize operation. When a volume is truncated, Purity automatically takes an undo snapshot, providing a 24-hour window during which the previous contents can be retrieved. After truncating a volume, its provisioned size can be subsequently increased, but the data in truncated sectors cannot be retrieved. If set to `$False` or not set at all and the volume is being reduced in size, the volume copy operation fails. Required if the `Provisioned` parameter is set to a volume size that is smaller than the original size.

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

### -VolumeGroupId

(REST API 2.3+) Adds the volume to the specified volume group.

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

### -VolumeGroupName

(REST API 2.3+) Adds the volume to the specified volume group.

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

### -VolumeName

The new name for the resource.

```yaml
Type: String
Parameter Sets: (All)
Aliases: VolumeNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkloadId

Set the `PodId` or `VolumeName` of the workload to an empty string to remove the volume from the workload.

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

### -WorkloadName

Set the `PodId` or `VolumeName` of the workload to an empty string to remove the volume from the workload.

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

[Get-Pfa2Volume](Get-Pfa2Volume.md)

[New-Pfa2Volume](New-Pfa2Volume.md)

[Remove-Pfa2Volume](Remove-Pfa2Volume.md)
