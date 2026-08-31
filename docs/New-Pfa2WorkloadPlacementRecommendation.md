---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2WorkloadPlacementRecommendation

## SYNOPSIS

Create a request for a workload placement recommendation.

## SYNTAX

```
New-Pfa2WorkloadPlacementRecommendation [-Array <Rest2Api>] [-XRequestId <String>]
 [-ContextName <List[String]>]
 [-PlacementNames <List[String]>]
 [-PresetIds <List[String]>]
 [-PresetNames <List[String]>] [-ProjectionMonths <Int32>]
 [-RecommendationEngine <String>] [-ResultsLimit <Int32>]
 [-ParametersName <List[String]>]
 [-AdditionalConstraintsTargetsId <List[String]>]
 [-AdditionalConstraintsTargetsName <List[String]>]
 [-AdditionalConstraintsTargetsResourceType <List[String]>]
 [-ParametersValueBoolean <List[Boolean]>]
 [-ParametersValueInteger <List[Int64]>]
 [-ParametersValueString <List[String]>]
 [-ResultsPlacementsName <List[String]>]
 [-AdditionalConstraintsRequiredResourceReferencesAllowedValuesId <List[String]>]
 [-AdditionalConstraintsRequiredResourceReferencesAllowedValuesName <List[String]>]
 [-AdditionalConstraintsRequiredResourceReferencesAllowedValuesResourceType <List[String]>]
 [-ParametersValueResourceReferenceId <List[String]>]
 [-ParametersValueResourceReferenceName <List[String]>]
 [-ParametersValueResourceReferenceResourceType <List[String]>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a recommendation for the placement of the specified workload. The computation might take a few minutes.

## EXAMPLES

### Example 1
```powershell
New-Pfa2WorkloadPlacementRecommendation -Array $FlashArray -PresetNames 'sql-server-preset' -ResultsLimit 5
```

Asks the fleet where a workload built from a preset should be placed, returning the top five candidates.

### Example 2
```powershell
New-Pfa2WorkloadPlacementRecommendation -Array $FlashArray -PresetNames 'sql-server-preset' -PlacementNames 'flasharray-01' -ProjectionMonths 12
```

Evaluates a specific target array against a 12-month growth projection.

### Example 3
```powershell
New-Pfa2WorkloadPlacementRecommendation -Array $FlashArray -PlacementNames 'flasharray-01'
```

Creates a workload placement recommendation specifying only -PlacementNames.

## PARAMETERS

### -AdditionalConstraintsRequiredResourceReferencesAllowedValuesId

">A globally unique, system-generated ID. The ID cannot be modified.

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

### -AdditionalConstraintsRequiredResourceReferencesAllowedValuesName

">The resource name, such as volume name, pod name, snapshot name, and so on.

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

### -AdditionalConstraintsRequiredResourceReferencesAllowedValuesResourceType

">Type of the object (full name of the endpoint). Valid values are `hosts`, `host-groups`, `network-interfaces`, `pods`, `ports`, `pod-replica-links`, `subnets`, `volumes`, `volume-snapshots`, `volume-groups`, `directories`, `policies/nfs`, `policies/smb`, and `policies/snapshot`, etc.

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

### -AdditionalConstraintsTargetsId

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

### -AdditionalConstraintsTargetsName

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

### -AdditionalConstraintsTargetsResourceType

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

### -ParametersName

The name of the parameter.

reference: WorkloadParameter

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

### -ParametersValueBoolean

The value for a boolean parameter.

reference: WorkloadParameterValue

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

### -ParametersValueInteger

The value for an integer parameter.

reference: WorkloadParameterValue

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

### -ParametersValueResourceReferenceId

The id of the resource to reference. One of `Id` or `InputsName` must be set, but they cannot be set together.

reference: WorkloadParameterValueResourceReference

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

### -ParametersValueResourceReferenceName

The name of the resource to reference. One of `Id` or `InputsName` must be set, but they cannot be set together.

reference: WorkloadParameterValueResourceReference

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

### -ParametersValueResourceReferenceResourceType

The type of the resource to reference. Resource type is optional, and will be automatically determined by the server if not set.

reference: WorkloadParameterValueResourceReference

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

### -ParametersValueString

The value for a string parameter.

reference: WorkloadParameterValue

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

### -PlacementNames

Placements from the preset which should be used to compute recommendation. Optional parameter if preset has just one placement.

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

### -PresetIds

A globally unique, system-generated ID. The ID cannot be modified.

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

### -PresetNames

The resource name, such as volume name, pod name, snapshot name, and so on.

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

### -ProjectionMonths

The number of months to compute the projections. If not specified, defaults to 1 month.

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

### -RecommendationEngine

This parameter defines which engine to use for recommendations. Possible values include `pure1`, `local`, and `best-available`. If not specified, defaults to `best-available` which may mix results of different engines, while `pure1` and `local` restrict the used engine.

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

### -ResultsLimit

The maximum number of results to return. If not specified, defaults to 10 results.

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

### -ResultsPlacementsName

Restricts the returned recommendations to the named placement targets.

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

### None

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Get-Pfa2WorkloadPlacementRecommendation](Get-Pfa2WorkloadPlacementRecommendation.md)
