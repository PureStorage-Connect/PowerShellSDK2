---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2Volume

## SYNOPSIS

(REST API 2.0+) Create or copy a volume and upsert tags

## SYNTAX

### Param (Default)
```
New-Pfa2Volume [-Array <Rest2Api>] [-XRequestID <String>]
 [-AddToProtectionGroupIds <List[String]>]
 [-AddToProtectionGroupNames <List[String]>] [-AllowThrottle <Boolean>]
 [-ContextName <List[String]>] [-Name <String>] [-Overwrite <Boolean>]
 [-WithDefaultProtection <Boolean>] [-Destroyed <Boolean>] [-Provisioned <Int64>] [-Subtype <String>]
 [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>]
 [-ProtocolEndpointContainerVersion <String>] [-QosBandwidthLimit <Int64>] [-QosIopsLimit <Int64>]
 [-SourceId <String>] [-SourceName <String>] [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-WorkloadId <String>] [-WorkloadName <String>]
 [-WorkloadConfiguration <String>] [-ApiVersion <String>]
 [<CommonParameters>]
```

### X2
```
New-Pfa2Volume [-Array <Rest2Api>] [-XRequestID <String>]
 [-AddToProtectionGroupIds <List[String]>]
 [-AddToProtectionGroupNames <List[String]>] [-AllowThrottle <Boolean>]
 [-ContextName <List[String]>] [-Name <String>] [-Overwrite <Boolean>]
 [-WithDefaultProtection <Boolean>] [-Destroyed <Boolean>] [-Provisioned <Int64>] [-Subtype <String>]
 [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>]
 [-ProtocolEndpointContainerVersion <String>] -QosBandwidthLimit <Int64> [-QosIopsLimitReset]
 [-SourceId <String>] [-SourceName <String>] [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-WorkloadId <String>] [-WorkloadName <String>]
 [-WorkloadConfiguration <String>] [-ApiVersion <String>]
 [<CommonParameters>]
```

### X1
```
New-Pfa2Volume [-Array <Rest2Api>] [-XRequestID <String>]
 [-AddToProtectionGroupIds <List[String]>]
 [-AddToProtectionGroupNames <List[String]>] [-AllowThrottle <Boolean>]
 [-ContextName <List[String]>] [-Name <String>] [-Overwrite <Boolean>]
 [-WithDefaultProtection <Boolean>] [-Destroyed <Boolean>] [-Provisioned <Int64>] [-Subtype <String>]
 [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>]
 [-ProtocolEndpointContainerVersion <String>] -QosIopsLimit <Int64> [-QosBandwidthLimitReset]
 [-SourceId <String>] [-SourceName <String>] [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-WorkloadId <String>] [-WorkloadName <String>]
 [-WorkloadConfiguration <String>] [-ApiVersion <String>]
 [<CommonParameters>]
```

### ParamReset
```
New-Pfa2Volume [-Array <Rest2Api>] [-XRequestID <String>]
 [-AddToProtectionGroupIds <List[String]>]
 [-AddToProtectionGroupNames <List[String]>] [-AllowThrottle <Boolean>]
 [-ContextName <List[String]>] [-Name <String>] [-Overwrite <Boolean>]
 [-WithDefaultProtection <Boolean>] [-Destroyed <Boolean>] [-Provisioned <Int64>] [-Subtype <String>]
 [-PriorityAdjustmentOperator <String>] [-PriorityAdjustmentValue <Int32>]
 [-ProtocolEndpointContainerVersion <String>] [-QosBandwidthLimitReset] [-QosIopsLimitReset]
 [-SourceId <String>] [-SourceName <String>] [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-WorkloadId <String>] [-WorkloadName <String>]
 [-WorkloadConfiguration <String>] [-ApiVersion <String>]
 [<CommonParameters>]
```

## DESCRIPTION

Creates one or more virtual storage volumes of the specified size. If `Provisioned` is not specified, the size of the new volume defaults to 1MB. (`Provisioned` sets the virtual size of the volume, measured in bytes. Volume size must be a multiple of 512 bytes between 1 MB and 4PB. Byte multipliers KB, MB, GB, TB and PB are supported, with no space between number and multiplier, such as `1PB`. Maximum value 4503599627370496.) The `Name` query parameter is required. The `AddToProtectionGroupNames` query parameter specifies a list of protection group names that will compose the initial protection for the volume. The `WithDefaultProtection` query parameter specifies whether to use the container default protection configuration for the volume. The `AddToProtectionGroupNames` and `WithDefaultProtection` query parameters cannot be provided when `Overwrite` is `$True`. For more information of creating volumes under SafeMode, run `Get-Help About_Pfa2Safemode`

## EXAMPLES

### Example 1
```powershell
New-Pfa2Volume -Array $FlashArray -Name 'db-vol-01' -Provisioned 1TB
```

Creates a 1 TB volume. -Provisioned is in bytes, and PowerShell converts the KB/MB/GB/TB/PB suffixes for you.

### Example 2
```powershell
1..5 | ForEach-Object { New-Pfa2Volume -Array $FlashArray -Name "db-vol-0$_" -Provisioned 1TB }
```

Creates five 1 TB volumes named db-vol-01 through db-vol-05.

### Example 3
```powershell
New-Pfa2Volume -Array $FlashArray -Name 'db-vol-copy' -SourceName 'db-vol-01.daily'
```

Creates a new volume from an existing volume snapshot. Pass a volume name to -SourceName instead to clone a live volume.

### Example 4
```powershell
New-Pfa2Volume -Array $FlashArray -Name 'db-vol-01' -Provisioned 1TB -AddToProtectionGroupNames 'db-daily-pg' -TagKey 'environment' -TagValue 'production'
```

Creates a volume, places it in a protection group so it is protected from the moment it exists, and tags it. For SafeMode considerations, run `Help about_Pfa2Safemode`.

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

### -AllowThrottle

If set to `$True`, allows operation to fail if array health is not optimal.

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

### -ProtocolEndpointContainerVersion

Defines vCenter and EXSi host compatibility of the protocol endpoint and its associated container. Valid values include: `1`, `2`, `3`. When `ProtocolEndpointContainerVersion` is set to `1`, it's compatible with vSphere version 7.0.1 or higher. When `ProtocolEndpointContainerVersion` is set to `2`, it's compatible with vSphere version 8.0.0 or higher. When `ProtocolEndpointContainerVersion` is set to `3`, it's compatible with vSphere version 8.0.1 or higher. The default `ProtocolEndpointContainerVersion` is `1`.

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

Sets the virtual size of the volume, measured in bytes.

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

### -SourceId

(REST API 2.3+) A globally unique, system-generated ID. The ID cannot be modified.

```yaml
Type: String
Parameter Sets: (All)
Aliases: SourceIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceName

(REST API 2.3+) The resource name, such as volume name, pod name, snapshot name, and so on.

```yaml
Type: String
Parameter Sets: (All)
Aliases: SourceNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Subtype

The type of volume. Valid values are `protocol_endpoint` and `regular`.

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

### -WithDefaultProtection

If specified as `$True`, the initial protection of the newly created volumes will be the union of the container default protection configuration and `AddToProtectionGroupNames`. If specified as `$False`, the default protection of the container will not be applied automatically. The initial protection of the newly created volumes will be configured by `AddToProtectionGroupNames`. If not specified, defaults to `$True`.

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

### -WorkloadConfiguration

The workload to which the volume is added. Set one of `SourceId` or `SourceName`, and `WorkloadConfiguration` to add the volume to the workload and configure it based on the `WorkloadConfiguration` from the preset the workload was originally provisioned from.  The workload to which the volume is added. Set one of `SourceId` or `SourceName`, and `WorkloadConfiguration` to add the volume to the workload and configure it based on the `WorkloadConfiguration` from the preset the workload was originally provisioned from.

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

### -WorkloadId

The workload to which the volume is added. Set one of `SourceId` or `SourceName`, and `WorkloadConfiguration` to add the volume to the workload and configure it based on the `WorkloadConfiguration` from the preset the workload was originally provisioned from.

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

The workload to which the volume is added. Set one of `SourceId` or `SourceName`, and `WorkloadConfiguration` to add the volume to the workload and configure it based on the `WorkloadConfiguration` from the preset the workload was originally provisioned from.

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

[Remove-Pfa2Volume](Remove-Pfa2Volume.md)

[Update-Pfa2Volume](Update-Pfa2Volume.md)
