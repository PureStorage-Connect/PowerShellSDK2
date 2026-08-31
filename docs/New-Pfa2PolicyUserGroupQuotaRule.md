---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2PolicyUserGroupQuotaRule

## SYNOPSIS

Create user-group-quota policy rules

## SYNTAX

```
New-Pfa2PolicyUserGroupQuotaRule [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-IgnoreUsage <Boolean>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-RuleEnforced <List[Boolean]>]
 [-RuleNotification <List[List]>]
 [-RuleQuotaLimit <List[Int64]>]
 [-RulesQuotaType <List[String]>]
 [-RulesSubjectId <List[Int64]>]
 [-RulesSubjectName <List[String]>]
 [-RulesSubjectSid <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates one or more user-group-quota policy rules. The `PolicyId` or `PolicyName` parameter is required, but cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2PolicyUserGroupQuotaRule -Array $FlashArray -PolicyName 'user-quota-1t' -RulesQuotaType 'user' -RuleQuotaLimit 100GB -RuleEnforced $true
```

Adds a per-user 100 GB quota rule.

### Example 2
```powershell
New-Pfa2PolicyUserGroupQuotaRule -Array $FlashArray -PolicyName 'user-quota-1t' -RulesQuotaType 'group' -RulesSubjectName 'storage-admins' -RuleQuotaLimit 1TB -RuleEnforced $true
```

Adds a 1 TB quota rule that applies to one specific group.

### Example 3
```powershell
New-Pfa2PolicyUserGroupQuotaRule -Array $FlashArray -PolicyName 'user-quota-1t' -RuleEnforced $true -RuleQuotaLimit 1TB
```

Creates an user and group quota policy rule on the array.

### Example 4
```powershell
New-Pfa2PolicyUserGroupQuotaRule -Array $FlashArray -PolicyName 'user-quota-1t'
```

Creates an user and group quota policy rule specifying only -PolicyName.

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

reference: PolicyruleusergroupquotapostRules

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

reference: PolicyruleusergroupquotapostRules

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

reference: PolicyruleusergroupquotapostRules

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

### -RulesQuotaType

Specifies the type of quota rule. Valid values are `user-default`, `user`, `user-group-member`, `group-default` and `group`. Every user-group-quota rule requires a mandatory rule type.

reference: PolicyruleusergroupquotapostRules

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

### -RulesSubjectId

The subject User Identifier (UID) or Group Identifier (GID). Exactly one of `RulesSubjectName`, `RulesSubjectId`, `RulesSubjectSid` is required.

reference: PolicyruleusergroupquotaSubjectRW

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

### -RulesSubjectName

The subject name. Retrieves all accounts matching this name. The name can have a `@domain` suffix to reduce ambiguity. Exactly one of `RulesSubjectName`, `RulesSubjectId`, or `RulesSubjectSid` is required.

reference: PolicyruleusergroupquotaSubjectRW

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

### -RulesSubjectSid

The subject Security Identifier (SID), which uniquely identifies a user or group. Exactly one of `RulesSubjectName`, `RulesSubjectId`, or `RulesSubjectSid` is required.

reference: PolicyruleusergroupquotaSubjectRW

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

[Get-Pfa2PolicyUserGroupQuotaRule](Get-Pfa2PolicyUserGroupQuotaRule.md)

[Remove-Pfa2PolicyUserGroupQuotaRule](Remove-Pfa2PolicyUserGroupQuotaRule.md)

[Update-Pfa2PolicyUserGroupQuotaRule](Update-Pfa2PolicyUserGroupQuotaRule.md)
