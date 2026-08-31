---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2VolumeGroup

## SYNOPSIS

(REST API 2.1+) Create a volume group and upsert tags.

## SYNTAX

### Param (Default)
```
New-Pfa2VolumeGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-Name <String>]
 [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>] [-QosBandwidthLimit <Int64>]
 [-QosIopsLimit <Int64>] [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

### X2
```
New-Pfa2VolumeGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-Name <String>]
 [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>] -QosBandwidthLimit <Int64>
 [-QosIopsLimitReset] [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

### X1
```
New-Pfa2VolumeGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-Name <String>]
 [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>] -QosIopsLimit <Int64>
 [-QosBandwidthLimitReset] [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

### ParamReset
```
New-Pfa2VolumeGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-Name <String>]
 [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>] [-QosBandwidthLimitReset]
 [-QosIopsLimitReset] [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a volume group. The volume group itself does not contain any meaningful content; instead, it acts as a container that is used to organize volumes. Once a volume group has been created, volumes can be created inside the volume group or moved into and out of the volume group.

## EXAMPLES

### Example 1
```powershell
New-Pfa2VolumeGroup -Array $FlashArray -Name $VolumeGroupName
```

Create a new volume group on FlashArray with name $VolumeGroupName.

### Example 2
```powershell
New-Pfa2VolumeGroup -Array $FlashArray -QosBandwidthLimit 512MB -QosIopsLimit 10000
```

Creates a volume group with only the required parameters supplied.

### Example 3
```powershell
New-Pfa2VolumeGroup -Array $FlashArray -QosBandwidthLimit 512MB -QosIopsLimit 10000 -Name 'sql-vg' -PriorityAdjustmentOperator '+'
```

Creates a volume group and sets -Name and -PriorityAdjustmentOperator in the same call.

### Example 4
```powershell
New-Pfa2VolumeGroup -Array $FlashArray -Name 'sql-vg' -TagKey 'environment' -TagValue 'production'
```

Creates a volume group and applies the tag `environment=production`.

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

[Get-Pfa2VolumeGroup](Get-Pfa2VolumeGroup.md)

[Remove-Pfa2VolumeGroup](Remove-Pfa2VolumeGroup.md)

[Update-Pfa2VolumeGroup](Update-Pfa2VolumeGroup.md)
