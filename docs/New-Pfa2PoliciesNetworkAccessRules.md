---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2PoliciesNetworkAccessRules

## SYNOPSIS

(REST API 2.41+) Create a network access policy rule

## SYNTAX

```
New-Pfa2PoliciesNetworkAccessRules [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-RulesClient <List[String]>]
 [-RulesEffect <List[String]>]
 [-RulesIndex <List[Int32]>]
 [-RulesInterfaces <List[List]>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Adds one or more rules to a network access policy. Rules are evaluated in ascending `RulesIndex` order and the first match decides the outcome, so an allow-list is written as specific allow rules followed by a broad deny rule.

## EXAMPLES

### Example 1
```powershell
New-Pfa2PoliciesNetworkAccessRules -Array $FlashArray -PolicyName 'mgmt-access' -RulesClient '10.0.0.0/24' -RulesEffect 'allow' -RulesIndex 1
```

Adds a rule permitting management access from a subnet. -RulesIndex sets the evaluation order, and the first matching rule wins.

### Example 2
```powershell
New-Pfa2PoliciesNetworkAccessRules -Array $FlashArray -PolicyName 'mgmt-access' -RulesClient '0.0.0.0/0' -RulesEffect 'deny' -RulesIndex 2 -RulesInterfaces 'management'
```

Adds a lower-priority rule denying management access from everywhere else, giving an allow-list.

### Example 3
```powershell
New-Pfa2PoliciesNetworkAccessRules -Array $FlashArray -PolicyName 'mgmt-access' -RulesClient '10.0.0.0/24' -RulesEffect 'allow'
```

Creates a network access policy rule on the array.

### Example 4
```powershell
New-Pfa2PoliciesNetworkAccessRules -Array $FlashArray -PolicyName 'mgmt-access'
```

Creates a network access policy rule specifying only -PolicyName.

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

### -RulesClient

Specifies which clients are given access. Valid values include `IP`, `IP mask`, or `hostname`. The default is `*` if not specified.

reference: PolicyrulenfsclientpostRules

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

### -RulesEffect

Whether a request matching the rule is permitted or refused. The first rule that matches, in `RulesIndex` order, decides the outcome.

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

### -RulesIndex

The position of the rule within the policy. Rules are evaluated in ascending index order and the first match wins, so an allow-list is expressed as specific allow rules followed by a broad deny rule.

```yaml
Type: List[Int32]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RulesInterfaces

The array interfaces the rule applies to, such as `management` or `replication`. If not set, the rule applies to all interfaces.

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

[Get-Pfa2PoliciesNetworkAccessRules](Get-Pfa2PoliciesNetworkAccessRules.md)

[Remove-Pfa2PoliciesNetworkAccessRules](Remove-Pfa2PoliciesNetworkAccessRules.md)

[Update-Pfa2PoliciesNetworkAccessRules](Update-Pfa2PoliciesNetworkAccessRules.md)
