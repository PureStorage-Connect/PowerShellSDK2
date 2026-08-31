---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2Workload

## SYNOPSIS

Create a workload

## SYNTAX

```
New-Pfa2Workload [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] -Name <String>
 [-PresetIds <List[String]>]
 [-PresetNames <List[String]>]
 [-ParametersName <List[String]>]
 [-ParametersValueBoolean <List[Boolean]>]
 [-ParametersValueInteger <List[Int64]>]
 [-ParametersValueString <List[String]>]
 [-ParametersValueResourceReferenceId <List[String]>]
 [-ParametersValueResourceReferenceName <List[String]>]
 [-ParametersValueResourceReferenceResourceType <List[String]>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates one workload.

## EXAMPLES

### Example 1
```powershell
New-Pfa2Workload -Array $FlashArray -Name 'sql-prod-workload'
```

Creates a workload with only the required parameters supplied.

### Example 2
```powershell
New-Pfa2Workload -Array $FlashArray -Name 'sql-prod-workload' -PresetNames 'sql-server-preset' -ParametersName 'parameters-01'
```

Creates a workload and sets -PresetNames and -ParametersName in the same call.

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

The id of the resource to reference. One of `ParametersValueResourceReferenceId` or `ParametersName` must be set, but they cannot be set together.

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

The name of the resource to reference. One of `ParametersValueResourceReferenceId` or `ParametersName` must be set, but they cannot be set together.

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

### -PresetIds

Create the resource using the preset specified by the ID. Only one preset can be specified. One of the `PresetIds` or `PresetNames` parameters are required, but they cannot be set together.

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

Create the resource using the preset specified by name. Only one preset can be specified. One of the `PresetIds` or `PresetNames` parameters are required, but they cannot be set together.

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

[Get-Pfa2Workload](Get-Pfa2Workload.md)

[Remove-Pfa2Workload](Remove-Pfa2Workload.md)

[Update-Pfa2Workload](Update-Pfa2Workload.md)
