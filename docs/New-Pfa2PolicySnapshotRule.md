---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2PolicySnapshotRule

## SYNOPSIS

(REST API 2.3+) Create snapshot policy rules

## SYNTAX

```
New-Pfa2PolicySnapshotRule [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-RuleAt <List[Int64]>]
 [-RuleClientName <List[String]>]
 [-RuleEvery <List[Int64]>]
 [-RuleKeepFor <List[Int64]>]
 [-RuleSuffix <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates one or more snapshot policy rules. The `PolicyId` or `PolicyName` parameter is required, but cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2PolicySnapshotRule -Array $FlashArray -PolicyName 'snap-hourly' -RuleEvery 3600000 -RuleKeepFor 86400000 -RuleSuffix 'hourly'
```

Adds a rule that snapshots every hour and keeps each snapshot for 24 hours. Intervals are in milliseconds.

### Example 2
```powershell
New-Pfa2PolicySnapshotRule -Array $FlashArray -PolicyName 'snap-hourly' -RuleEvery 86400000 -RuleAt 25200000 -RuleKeepFor 604800000 -RuleSuffix 'daily'
```

Adds a daily rule that fires at 07:00 and keeps snapshots for seven days. -RuleAt is milliseconds past midnight and is only valid when -RuleEvery is a whole number of days.

### Example 3
```powershell
New-Pfa2PolicySnapshotRule -Array $FlashArray -PolicyName 'snap-hourly' -RuleAt 25200000 -RuleClientName '10.0.0.0/24'
```

Creates a snapshot policy rule on the array.

### Example 4
```powershell
New-Pfa2PolicySnapshotRule -Array $FlashArray -PolicyName 'snap-hourly'
```

Creates a snapshot policy rule specifying only -PolicyName.

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

### -RuleClientName

The snapshot client name. A full snapshot name is constructed in the form of `DIR.CLIENT_NAME.SUFFIX` where `DIR` is the managed directory name, `CLIENT_NAME` is the snapshot client name, and `SUFFIX` is the snapshot suffix. The client-visible snapshot name is `CLIENT_NAME.SUFFIX`.

reference: PolicyrulesnapshotpostRules

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RulesClientName

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

### -RuleSuffix

The snapshot suffix name. A full snapshot name is constructed in the form of `DIR.CLIENT_NAME.SUFFIX` where `DIR` is the managed directory name, `CLIENT_NAME` is the snapshot client name, and `SUFFIX` is the snapshot suffix. The client-visible snapshot name is `CLIENT_NAME.SUFFIX`. The `RuleSuffix` value can only be set for one rule in the same policy. The `RuleSuffix` value can only be set on a rule with the same `RuleKeepFor` value and `RuleEvery` value. The `RuleSuffix` value can only be set on the rule with the largest `RuleKeepFor` value. If not specified, defaults to a monotonically increasing number generated by the system.

reference: PolicyrulesnapshotpostRules

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RulesSuffix

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

[Get-Pfa2PolicySnapshotRule](Get-Pfa2PolicySnapshotRule.md)

[Remove-Pfa2PolicySnapshotRule](Remove-Pfa2PolicySnapshotRule.md)

[Update-Pfa2PolicySnapshotRule](Update-Pfa2PolicySnapshotRule.md)
