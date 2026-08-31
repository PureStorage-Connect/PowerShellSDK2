---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2PolicyUserGroupQuotaMember

## SYNOPSIS

Create a membership between a managed directory and a user-group-quota policy

## SYNTAX

```
New-Pfa2PolicyUserGroupQuotaMember [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-IgnoreUsage <Boolean>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-MemberId <List[String]>]
 [-MemberName <List[String]>]
 [-MemberResourceType <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a membership between one or more managed directories and a user-group-quota policy. The `PolicyId` or `PolicyName` parameter is required, but cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2PolicyUserGroupQuotaMember -Array $FlashArray -PolicyName 'user-quota-1t' -MemberName 'fs-prod-01:home'
```

Adds managed directory 'fs-prod-01:home' to user and group quota policy 'user-quota-1t'.

### Example 2
```powershell
New-Pfa2PolicyUserGroupQuotaMember -Array $FlashArray -PolicyName 'user-quota-1t' -MemberName 'fs-prod-01:home', 'fs-prod-02:home'
```

Adds several managed directories to user and group quota policy 'user-quota-1t' in a single call.

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

### -MemberId

A globally unique, system-generated ID. The ID cannot be modified.

reference: ReferenceWithType

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: MemberIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MemberName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: ReferenceWithType

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: MemberNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MemberResourceType

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

[Get-Pfa2PolicyUserGroupQuotaMember](Get-Pfa2PolicyUserGroupQuotaMember.md)

[Remove-Pfa2PolicyUserGroupQuotaMember](Remove-Pfa2PolicyUserGroupQuotaMember.md)
