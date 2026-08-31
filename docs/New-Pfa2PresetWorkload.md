---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2PresetWorkload

## SYNOPSIS

Create a workload preset

## SYNTAX

```
New-Pfa2PresetWorkload [-Array <Rest2Api>] [-XRequestId <String>]
 [-ContextName <List[String]>] -Name <String> [-Description <String>]
 [-WorkloadType <String>] [-ParametersName <List[String]>]
 [-ParametersType <List[String]>]
 [-PeriodicReplicationConfigurationsName <List[String]>]
 [-PeriodicReplicationConfigurationsRemoteTargets <Hashtable[]>]
 [-PlacementConfigurationsName <List[String]>]
 [-PlacementConfigurationsQosConfigurations <List[List]>]
 [-QosConfigurationsBandwidthLimit <List[String]>]
 [-QosConfigurationsIopsLimit <List[String]>]
 [-QosConfigurationsName <List[String]>]
 [-SnapshotConfigurationsName <List[String]>]
 [-VolumeConfigurationsCount <List[String]>]
 [-VolumeConfigurationsName <List[String]>]
 [-VolumeConfigurationsPeriodicReplicationConfigurations <List[List]>]
 [-VolumeConfigurationsPlacementConfigurations <List[List]>]
 [-VolumeConfigurationsProvisionedSize <List[String]>]
 [-VolumeConfigurationsSnapshotConfigurations <List[List]>]
 [-WorkloadTagsCopyable <List[String]>]
 [-WorkloadTagsKey <List[String]>]
 [-WorkloadTagsNamespace <List[String]>]
 [-WorkloadTagsValue <List[String]>]
 [-ParametersMetadataDescription <List[String]>]
 [-ParametersMetadataDisplayName <List[String]>]
 [-ParametersMetadataSubtype <List[String]>]
 [-PeriodicReplicationConfigurationsRulesAt <List[String]>]
 [-PeriodicReplicationConfigurationsRulesEvery <List[String]>]
 [-PeriodicReplicationConfigurationsRulesKeepFor <List[String]>]
 [-PlacementConfigurationsStorageClassId <List[String]>]
 [-PlacementConfigurationsStorageClassName <List[String]>]
 [-PlacementConfigurationsStorageClassResourceType <List[String]>]
 [-SnapshotConfigurationsRulesAt <List[String]>]
 [-SnapshotConfigurationsRulesEvery <List[String]>]
 [-SnapshotConfigurationsRulesKeepFor <List[String]>]
 [-ParametersConstraintsBooleanDefault <List[Boolean]>]
 [-ParametersConstraintsIntegerAllowedValues <List[List]>]
 [-ParametersConstraintsIntegerDefault <List[Int64]>]
 [-ParametersConstraintsIntegerMaximum <List[Int64]>]
 [-ParametersConstraintsIntegerMinimum <List[Int64]>]
 [-ParametersConstraintsStringAllowedValues <List[List]>]
 [-ParametersConstraintsStringDefault <List[String]>]
 [-ParametersConstraintsResourceReferenceAllowedValuesResourceType <List[String]>]
 [-ParametersConstraintsResourceReferenceDefaultId <List[String]>]
 [-ParametersConstraintsResourceReferenceDefaultName <List[String]>]
 [-ParametersConstraintsResourceReferenceDefaultResourceType <List[String]>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates one workload preset. Examples of the format for parameter -PeriodicReplicationConfigurationsRemoteTargets: @(@{ Id = "{{ parameters.r1.id }}"; Name = "{{ parameters.r1.name }}"; ResourceType = "{{ parameters.r1.resource_type }}" }), @(@{ Id = "resource_id"; ResourceType = "remote-arrays" }), @(@{ Name = "resource_name"; ResourceType = "remote-arrays" })

## EXAMPLES

### Example 1
```powershell
New-Pfa2PresetWorkload -Array $FlashArray -Name 'sql-server-preset'
```

Creates a workload preset with only the required parameters supplied.

### Example 2
```powershell
New-Pfa2PresetWorkload -Array $FlashArray -Name 'sql-server-preset' -Description 'SQL Server production workload' -WorkloadType 'database'
```

Creates a workload preset and sets -Description and -WorkloadType in the same call.

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

### -Description

A brief description of the workload the preset will configure. Supports up to 1KB of unicode characters.

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

### -Name

Performs the operation on the unique resource names specified. Only one value is supported.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ParametersConstraintsBooleanDefault

The default value to use if no value is provided.

reference: PresetWorkloadConstraintsBoolean

```yaml
Type: List[Boolean]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParametersConstraintsIntegerAllowedValues

The valid values that can be supplied to the parameter. A parameter that collects the number of volumes to provision might, for example, limit the allowed values to a few fixed options. Supports up to five values.

reference: PresetWorkloadConstraintsInteger

```yaml
Type: List[List]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParametersConstraintsIntegerDefault

The default value to use if no value is provided. Must be present in `ParametersConstraintsIntegerAllowedValues`, if set. Must comply with `ParametersConstraintsIntegerMinimum`, if set. Must comply with `ParametersConstraintsIntegerMaximum`, if set.

reference: PresetWorkloadConstraintsInteger

```yaml
Type: List[Int64]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParametersConstraintsIntegerMaximum

The maximum acceptable value, inclusive.

reference: PresetWorkloadConstraintsInteger

```yaml
Type: List[Int64]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParametersConstraintsIntegerMinimum

The minimum acceptable value, inclusive.

reference: PresetWorkloadConstraintsInteger

```yaml
Type: List[Int64]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParametersConstraintsResourceReferenceAllowedValuesResourceType

">The type of resource the parameter references. Valid values include `storage-classes` and `remote-arrays`.

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

### -ParametersConstraintsResourceReferenceDefaultId

A globally unique, system-generated ID. The ID cannot be modified.

reference: ReferenceWithType

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

### -ParametersConstraintsResourceReferenceDefaultName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: ReferenceWithType

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

### -ParametersConstraintsResourceReferenceDefaultResourceType

Type of the object (full name of the endpoint). Valid values are `hosts`, `host-groups`, `network-interfaces`, `pods`, `ports`, `pod-replica-links`, `subnets`, `volumes`, `volume-snapshots`, `volume-groups`, `directories`, `policies/nfs`, `policies/smb`, and `policies/snapshot`, etc.

reference: ReferenceWithType

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

### -ParametersConstraintsStringAllowedValues

The valid values that can be supplied to the parameter. A parameter that collects the name of the environment to which a workload will deploy might, for example, limit the allowed values to `production`, `testing` and `development`. Supports up to five values, with up to 64 unicode characters per value.

reference: PresetWorkloadConstraintsString

```yaml
Type: List[List]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ParametersConstraintsStringDefault

The default value to use if no value is provided. Must be present in `ParametersConstraintsIntegerAllowedValues`, if `ParametersConstraintsIntegerAllowedValues` is set. Supports up to 64 unicode characters.

reference: PresetWorkloadConstraintsString

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

### -ParametersMetadataDescription

A brief description of the parameter and how it is used within the preset. Supports up to 1KB of unicode characters.

reference: PresetWorkloadMetadata

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

### -ParametersMetadataDisplayName

The human-friendly name of the parameter, which will be shown in the GUI instead of the standard name if configured. Supports up to 64 unicode characters.

reference: PresetWorkloadMetadata

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

### -ParametersMetadataSubtype

The subtype of the parameter, which the GUI will use to contextualize the prompt for the parameter value. For example, when set to size, the GUI will display an input field with a dropdown menu that contains common size units such as MB, GB, TB, etc. Valid values include `size`, `iops`, `bandwidth`, `time` and `duration`. Subtype can only be used with integer parameters.

reference: PresetWorkloadMetadata

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

### -ParametersName

The name of the parameter, by which other fields in the preset can reference it. Name must be unique across all parameters in the preset.

reference: PresetWorkloadParameter

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

### -ParametersType

The type of the parameter. Valid values include `string`, `integer`, `boolean` and `resource_reference`.  String parameters can be used to collect metadata about workloads deployed from the preset, such as the environment to which they are deployed (e.g., production, development, etc.) or the billing account to which they belong for charge back and show back purposes.  Integer and boolean parameters can be used to configure specific fields in the preset, such as the number or size of volumes to provision.  Resource reference parameters can be used to collect references to other objects, such as storage classes or remote arrays.

reference: PresetWorkloadParameter

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

### -PeriodicReplicationConfigurationsName

The name of the periodic replication configuration, by which other configuration objects in the preset can reference it. Name must be unique across all configuration objects in the preset.

reference: PresetWorkloadPeriodicReplicationConfiguration

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

### -PeriodicReplicationConfigurationsRemoteTargets

The remote targets to which snapshots may be replicated. Provide 1 value(s).

reference: PresetWorkloadPeriodicReplicationConfiguration

```yaml
Type: Hashtable[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PeriodicReplicationConfigurationsRulesAt

">Specifies the number of milliseconds since midnight at which to take a snapshot. The `PeriodicReplicationConfigurationsRulesAt` value cannot be set if the `PeriodicReplicationConfigurationsRulesEvery` value is not measured in days. The `PeriodicReplicationConfigurationsRulesAt` value can only be set on the first rule.

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

### -PeriodicReplicationConfigurationsRulesEvery

">Specifies the interval between snapshots, in milliseconds. The `PeriodicReplicationConfigurationsRulesEvery` value for all rules must be multiples of one another. The `PeriodicReplicationConfigurationsRulesEvery` value must be between five minutes and 400 days for the first rule. The `PeriodicReplicationConfigurationsRulesEvery` value must be between five minutes and one day for the second rule.

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

### -PeriodicReplicationConfigurationsRulesKeepFor

">Specifies the period that snapshots are retained before they are eradicated, in milliseconds. The `PeriodicReplicationConfigurationsRulesKeepFor` value must be between 10 minutes and 24855 days for the first rule, and a multiple of a second. The `PeriodicReplicationConfigurationsRulesKeepFor` value must be between 10 minutes and 2147483647 days for the second rule, and must be greater than or equal to the `PeriodicReplicationConfigurationsRulesKeepFor` value of the first rule.

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

### -PlacementConfigurationsName

The name of the placement configuration, by which other configuration objects in the preset can reference it. Name must be unique across all configuration objects in the preset.

reference: PresetWorkloadPlacementConfiguration

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

### -PlacementConfigurationsQosConfigurations

The names of the QoS configurations to apply to the storage resources (such as volumes) in the placement. The limits defined in the QoS configurations will be shared across all storage resources in the placement.  Provide at most 1 value(s).

reference: PresetWorkloadPlacementConfiguration

```yaml
Type: List[List]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PlacementConfigurationsStorageClassId

A globally unique, system-generated ID. The ID cannot be modified.

reference: ReferenceWithType

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

### -PlacementConfigurationsStorageClassName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: ReferenceWithType

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

### -PlacementConfigurationsStorageClassResourceType

Type of the object (full name of the endpoint). Valid values are `hosts`, `host-groups`, `network-interfaces`, `pods`, `ports`, `pod-replica-links`, `subnets`, `volumes`, `volume-snapshots`, `volume-groups`, `directories`, `policies/nfs`, `policies/smb`, and `policies/snapshot`, etc.

reference: ReferenceWithType

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

### -QosConfigurationsBandwidthLimit

The QoS IOPs limit shared across all volumes in the placement. Between 100 and 100000000, inclusive. Supports parameterization.

reference: PresetWorkloadQosConfiguration

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

### -QosConfigurationsIopsLimit

The maximum QoS bandwidth limit shared across all volumes in the placement. Whenever throughput exceeds the bandwidth limit, throttling occurs. Measured in bytes per second. Between 1MB/s and 512 GB/s, inclusive. Supports parameterization.

reference: PresetWorkloadQosConfiguration

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

### -QosConfigurationsName

The name of the QoS configuration, by which other configuration objects in the preset can reference it. Name must be unique across all configuration objects in the preset.

reference: PresetWorkloadQosConfiguration

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

### -SnapshotConfigurationsName

The name of the snapshot configuration, by which other configuration objects in the preset can reference it. Name must be unique across all configuration objects in the preset.

reference: PresetWorkloadSnapshotConfiguration

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

### -SnapshotConfigurationsRulesAt

">Specifies the number of milliseconds since midnight at which to take a snapshot. The `PeriodicReplicationConfigurationsRulesAt` value cannot be set if the `PeriodicReplicationConfigurationsRulesEvery` value is not measured in days. The `PeriodicReplicationConfigurationsRulesAt` value can only be set on the first rule.

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

### -SnapshotConfigurationsRulesEvery

">Specifies the interval between snapshots, in milliseconds. The `PeriodicReplicationConfigurationsRulesEvery` value for all rules must be multiples of one another. The `PeriodicReplicationConfigurationsRulesEvery` value must be between five minutes and 400 days for the first rule. The `PeriodicReplicationConfigurationsRulesEvery` value must be between five minutes and one day for the second rule.

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

### -SnapshotConfigurationsRulesKeepFor

">Specifies the period that snapshots are retained before they are eradicated, in milliseconds. The `PeriodicReplicationConfigurationsRulesKeepFor` value must be between 10 minutes and 24855 days for the first rule, and a multiple of a second. The `PeriodicReplicationConfigurationsRulesKeepFor` value must be between 10 minutes and 2147483647 days for the second rule, and must be greater than or equal to the `PeriodicReplicationConfigurationsRulesKeepFor` value of the first rule.

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

### -VolumeConfigurationsCount

The number of volumes to provision. Supports parameterization.

reference: PresetWorkloadVolumeConfiguration

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

### -VolumeConfigurationsName

The name of the volume configuration, by which other configuration objects in the preset can reference it. Name must be unique across all configuration objects in the preset.

reference: PresetWorkloadVolumeConfiguration

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

### -VolumeConfigurationsPeriodicReplicationConfigurations

The names of the periodic replication configurations to apply to the volumes.

reference: PresetWorkloadVolumeConfiguration

```yaml
Type: List[List]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeConfigurationsPlacementConfigurations

The names of the placement configurations with which to associate the volumes.  Provide 1 value(s).

reference: PresetWorkloadVolumeConfiguration

```yaml
Type: List[List]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeConfigurationsProvisionedSize

The virtual size of each volume. Measured in bytes and must be a multiple of 512. The maximum size is 4503599627370496 (4PB). Supports parameterization.

reference: PresetWorkloadVolumeConfiguration

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

### -VolumeConfigurationsSnapshotConfigurations

The names of the snapshot configurations to apply to the volumes.

reference: PresetWorkloadVolumeConfiguration

```yaml
Type: List[List]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WorkloadTagsCopyable

Specifies whether to include the tag when copying the parent resource. If set to `$True`, the tag is included in resource copying. If set to `$False`, the tag is not included. If not specified, defaults to `$True`.

reference: PresetWorkloadWorkloadTag

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

### -WorkloadTagsKey

Key of the tag. Supports up to 64 Unicode characters.

reference: PresetWorkloadWorkloadTag

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

### -WorkloadTagsNamespace

Optional namespace of the tag. Namespace identifies the category of the tag. Omitting the namespace defaults to the namespace `ParametersConstraintsBooleanDefault`. The `pure*` namespaces are reserved for plugins and integration partners. It is recommended that customers avoid using reserved namespaces.

reference: PresetWorkloadWorkloadTag

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

### -WorkloadTagsValue

Value of the tag. Supports up to 256 Unicode characters. Supports parameterization.

reference: PresetWorkloadWorkloadTag

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

### -WorkloadType

The type of workload the preset will configure. Valid values include `VDI`, `File`, `MySQL` etc.

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

### -XRequestId

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

[Get-Pfa2PresetWorkload](Get-Pfa2PresetWorkload.md)

[Remove-Pfa2PresetWorkload](Remove-Pfa2PresetWorkload.md)

[Set-Pfa2PresetWorkload](Set-Pfa2PresetWorkload.md)

[Update-Pfa2PresetWorkload](Update-Pfa2PresetWorkload.md)
