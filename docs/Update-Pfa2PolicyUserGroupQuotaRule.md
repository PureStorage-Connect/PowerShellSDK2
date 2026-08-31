---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2PolicyUserGroupQuotaRule

## SYNOPSIS

Modify user-group-quota policy rules

## SYNTAX

```
Update-Pfa2PolicyUserGroupQuotaRule [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-IgnoreUsage <Boolean>] [-Name <String>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-RuleEnforced <List[Boolean]>]
 [-RuleNotification <List[List]>]
 [-RuleQuotaLimit <List[Int64]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies user-group-quota policy rules.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2PolicyUserGroupQuotaRule -Array $FlashArray -Name 'user-quota-1t' -PolicyName 'user-quota-1t'
```

Sets -PolicyName on the user and group quota policy rule named 'user-quota-1t'.

### Example 2
```powershell
Update-Pfa2PolicyUserGroupQuotaRule -Array $FlashArray -Name 'user-quota-1t' -RuleEnforced $true
```

Sets -RuleEnforced on the user and group quota policy rule named 'user-quota-1t'.

### Example 3
```powershell
Update-Pfa2PolicyUserGroupQuotaRule -Array $FlashArray -Name 'user-quota-1t' -RuleQuotaLimit 1TB
```

Sets -RuleQuotaLimit on the user and group quota policy rule named 'user-quota-1t'.

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

Flag used to override checks for user-group-quota management operations. If set to `$True`, user/group usage is not checked against the `quota_limits` of user-group-quota rules. If set to `$False`, the impact of the user-group-quota operation is checked against the user/group usage in the managed directory and its ancestors and the operation is not allowed if the user/group usage would exceed any enforced user-group-quota limits. If not specified, defaults to `$False`.

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

If set to `$True`, the quota is enforced and an out-of-space warning is issued if logical space usage exceeds the specified limit. If set to `$False`, the quota is not enforced and alerts and/or notifications are issued when logical space usage exceeds the limit value. If not specified, defaults to `$False`.

reference: PolicyruleusergroupquotapatchRules

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

Targets to notify when usage approaches or exceeds the quota limit. Valid non-empty values are `account` or `none`. The `account` value specifies that the user or group owning the usage will be notified, `none` specifies that notifications are not sent. If not specified, we assume `none`.

reference: PolicyruleusergroupquotapatchRules

```yaml
Type: List[List]
Parameter Sets: (All)
Aliases: RulesNotifications

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RuleQuotaLimit

Logical space limit of the quota (in bytes) assigned by the rule. This value cannot be negative.

reference: PolicyruleusergroupquotapatchRules

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

### String

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Get-Pfa2PolicyUserGroupQuotaRule](Get-Pfa2PolicyUserGroupQuotaRule.md)

[New-Pfa2PolicyUserGroupQuotaRule](New-Pfa2PolicyUserGroupQuotaRule.md)

[Remove-Pfa2PolicyUserGroupQuotaRule](Remove-Pfa2PolicyUserGroupQuotaRule.md)
