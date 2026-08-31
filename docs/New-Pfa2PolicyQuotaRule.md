---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2PolicyQuotaRule

## SYNOPSIS

(REST API 2.7+) Create quota policy rules

## SYNTAX

```
New-Pfa2PolicyQuotaRule [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-IgnoreUsage <Boolean>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-RuleEnforced <List[Boolean]>]
 [-RuleNotification <List[String]>]
 [-RuleQuotaLimit <List[Int64]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates one or more quota policy rules. The `PolicyId` or `PolicyName` parameter is required, but cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2PolicyQuotaRule -Array $FlashArray -PolicyName 'quota-10t' -RuleQuotaLimit 1TB -RuleEnforced $true
```

Adds an enforced 1 TB quota rule to a quota policy.

### Example 2
```powershell
New-Pfa2PolicyQuotaRule -Array $FlashArray -PolicyName 'quota-10t' -RuleQuotaLimit 1TB -RuleEnforced $false
```

Adds an advisory quota rule that reports over-usage without blocking writes.

### Example 3
```powershell
New-Pfa2PolicyQuotaRule -Array $FlashArray -PolicyName 'quota-10t' -RuleEnforced $true -RuleNotification 'quota-10t'
```

Creates a quota policy rule on the array.

### Example 4
```powershell
New-Pfa2PolicyQuotaRule -Array $FlashArray -PolicyName 'quota-10t'
```

Creates a quota policy rule specifying only -PolicyName.

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

### -IgnoreUsage

Flag used to override checks for quota management operations. If set to `$True`, directory usage is not checked against the `quota_limits` that are set. If set to `$False`, the actual logical bytes in use are prevented from exceeding the limits set on the directory. Client operations might be impacted. If the limit exceeds the quota, the client operation is not allowed. If not specified, defaults to `$False`.

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

### -RuleEnforced

If set to `$True`, this rule describes an enforced quota. An out-of-space warning is issued if logical space usage exceeds the limit value described in this rule. If set to `$False`, this rule describes an unenforced quota. Alerts and/or notifications are issued when logical space usage exceeds the limit value described in this rule. If not specified, defaults to `$False`.

reference: PolicyrulequotapostRules

```yaml
Type: List[Boolean]
Parameter Sets: (All)
Aliases: RulesEnforced

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleNotification

Targets to notify when usage approaches the quota limit. The list of notification targets is a comma-separated string. Valid values are one or more of `user` and `group`. To notify no targets, use `none`. If not specified, defaults to `none`.

reference: PolicyrulequotapostRules

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RulesNotifications

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleQuotaLimit

Logical space limit of the quota (in bytes) assigned by the rule. This value cannot be set to 0.

reference: PolicyrulequotapostRules

```yaml
Type: List[Int64]
Parameter Sets: (All)
Aliases: RulesQuotaLimit

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

[Get-Pfa2PolicyQuotaRule](Get-Pfa2PolicyQuotaRule.md)

[Remove-Pfa2PolicyQuotaRule](Remove-Pfa2PolicyQuotaRule.md)

[Update-Pfa2PolicyQuotaRule](Update-Pfa2PolicyQuotaRule.md)
