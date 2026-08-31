---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2PolicyAlertWatcherRule

## SYNOPSIS

Create alert-watcher policy rules

## SYNTAX

```
New-Pfa2PolicyAlertWatcherRule [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-RulesAlertClosureNotification <List[String]>]
 [-RuleEmail <List[String]>]
 [-RuleExcludedCode <List[List]>]
 [-RuleIncludedCode <List[List]>]
 [-RuleMinimumNotificationSeverity <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates one or more alert-watcher policy rules. Either the 'policy_ids' or 'policy_names' parameter is required, but both parameters cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2PolicyAlertWatcherRule -Array $FlashArray -PolicyName 'ops-watchers' -RuleEmail 'storage-ops@example.com' -RuleMinimumNotificationSeverity 'warning'
```

Adds a watcher rule that emails an address for warning and more severe alerts.

### Example 2
```powershell
New-Pfa2PolicyAlertWatcherRule -Array $FlashArray -PolicyName 'ops-watchers' -RulesAlertClosureNotification 'ops-watchers' -RuleEmail 'storage-ops@example.com'
```

Creates an alert watcher policy rule on the array.

### Example 3
```powershell
New-Pfa2PolicyAlertWatcherRule -Array $FlashArray -PolicyName 'ops-watchers'
```

Creates an alert watcher policy rule specifying only -PolicyName.

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

### -RuleEmail

The email address that will receive the alert notification emails.

reference: PolicyrulealertwatcherpostRules

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RulesEmail

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleExcludedCode

An alert with one of these codes will not have emails sent to the recipient. Cannot be specified with `include_codes`. If specified while `include_codes` is already set, `include_codes` will be cleared. Use "" to clear. If both `exclude_codes` and `include_codes` are cleared, defaults to an empty list for `exclude_codes`.

reference: PolicyrulealertwatcherpostRules

```yaml
Type: List[List]
Parameter Sets: (All)
Aliases: RulesExcludedCodes

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleIncludedCode

An alert must have one of these codes in order for emails to be sent to the recipient. Cannot be specified with `exclude_codes`. If specified while `exclude_codes` is already set, `exclude_codes` will be cleared. Use "" to clear. If both `exclude_codes` and `include_codes` are cleared, defaults to an empty list for `exclude_codes`.

reference: PolicyrulealertwatcherpostRules

```yaml
Type: List[List]
Parameter Sets: (All)
Aliases: RulesIncludedCodes

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleMinimumNotificationSeverity

The minimum severity that an alert must have in order for emails to be sent to the recipient. Possible values include `info`, `warning`, and `critical`. If not specified, defaults to `info`.

reference: PolicyrulealertwatcherpostRules

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RulesMinimumNotificationSeverity

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RulesAlertClosureNotification

Controls whether the watcher is also notified when an alert it was told about is closed.

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

### None

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Get-Pfa2PolicyAlertWatcherRule](Get-Pfa2PolicyAlertWatcherRule.md)

[Remove-Pfa2PolicyAlertWatcherRule](Remove-Pfa2PolicyAlertWatcherRule.md)
