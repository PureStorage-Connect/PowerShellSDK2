---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2PolicySnapshotRule

## SYNOPSIS

(REST API 2.35+) Modify a snapshot policy rule

## SYNTAX

```
Update-Pfa2PolicySnapshotRule [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-Name <String>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-RuleAt <List[Int64]>]
 [-RuleEvery <List[Int64]>]
 [-RuleKeepFor <List[Int64]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies an existing snapshot policy rule. Intervals such as `RuleEvery` and `RuleKeepFor` are expressed in milliseconds, and `RuleAt` is milliseconds past midnight.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2PolicySnapshotRule -Array $FlashArray -Name 'snap-hourly' -PolicyName 'snap-hourly'
```

Sets -PolicyName on the snapshot policy rule named 'snap-hourly'.

### Example 2
```powershell
Update-Pfa2PolicySnapshotRule -Array $FlashArray -Name 'snap-hourly' -RuleAt 25200000
```

Sets -RuleAt on the snapshot policy rule named 'snap-hourly'.

### Example 3
```powershell
Update-Pfa2PolicySnapshotRule -Array $FlashArray -Name 'snap-hourly' -RuleEvery 3600000
```

Sets -RuleEvery on the snapshot policy rule named 'snap-hourly'.

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

### -PolicyId

Performs the operation on the unique policy IDs specified. Enter multiple policy IDs. The `PolicyId` or `PolicyName` parameter is required, but they cannot be set together.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: PolicyIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyName

Performs the operation on the policy names specified. Enter multiple policy names. For example, `name01,name02`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: PolicyNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleAt

Specifies the number of milliseconds since midnight at which to take a snapshot. The `RuleAt` value can only be set to an hour and must be between 0 and 82800000, inclusive. The `RuleAt` value can only be set on the rule with the smallest `RuleEvery` value. The `RuleAt` value cannot be set if the `RuleEvery` value is not measured in days. The `RuleAt` value can only be set for at most one rule in the same policy.

reference: PolicyrulesnapshotpostRules

```yaml
Type: List[Int64]
Parameter Sets: (All)
Aliases: RulesAt

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleEvery

Specifies the interval between snapshots, in milliseconds. The `RuleEvery` value for all rules must be multiples of one another. The `RuleEvery` value must be unique for each rule in the same policy. The `RuleEvery` value must be between 5 minutes and 1 year.

reference: PolicyrulesnapshotpostRules

```yaml
Type: List[Int64]
Parameter Sets: (All)
Aliases: RulesEvery

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleKeepFor

Specifies the period that snapshots are retained before they are eradicated, in milliseconds. The `RuleKeepFor` value cannot be less than the `RuleEvery` value of the rule. The `RuleKeepFor` value must be unique for each rule in the same policy. The `RuleKeepFor` value must be between 5 minutes and 5 years. The `RuleKeepFor` value cannot be less than the `RuleKeepFor` value of any rule in the same policy with a smaller `RuleEvery` value.

reference: PolicyrulesnapshotpostRules

```yaml
Type: List[Int64]
Parameter Sets: (All)
Aliases: RulesKeepFor

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

[Get-Pfa2PolicySnapshotRule](Get-Pfa2PolicySnapshotRule.md)

[New-Pfa2PolicySnapshotRule](New-Pfa2PolicySnapshotRule.md)

[Remove-Pfa2PolicySnapshotRule](Remove-Pfa2PolicySnapshotRule.md)
