---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2PolicySmb

## SYNOPSIS

(REST API 2.3+) Modify SMB policies

## SYNTAX

```
Update-Pfa2PolicySmb [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>] [-PolicyName <String>]
 [-Enabled <Boolean>] [-AccessBasedEnumerationEnabled <Boolean>] [-ContinuousAvailabilityEnabled <Boolean>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies one or more SMB policies. To enable a policy, set `Enabled=$True`. To disable a policy, set `Enabled=$False`. To enable access based enumeration, set `AccessBasedEnumerationEnabled=$True`. To disable access based enumeration, set `AccessBasedEnumerationEnabled=$False`. To enable continuous availability, set `continuous_availability=$True`. To disable continuous availability, set `continuous_availability=$False`. To rename a policy, set `PolicyName` to the new name. The `Id` or `Name` parameter is required, but they cannot be set together.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2PolicySmb -Array $FlashArray -Name 'smb-default' -Enabled $true
```

Sets -Enabled on the SMB policy named 'smb-default'.

### Example 2
```powershell
Update-Pfa2PolicySmb -Array $FlashArray -Name 'smb-default' -PolicyName 'smb-default'
```

Sets -PolicyName on the SMB policy named 'smb-default'.

### Example 3
```powershell
Update-Pfa2PolicySmb -Array $FlashArray -Name 'smb-default' -AccessBasedEnumerationEnabled $true
```

Sets -AccessBasedEnumerationEnabled on the SMB policy named 'smb-default'.

## PARAMETERS

### -AccessBasedEnumerationEnabled

(REST API 2.4+) If set to `$True`, enables access based enumeration on the policy. When access based enumeration is enabled on a policy, files and folders within exports that are attached to the policy will be hidden from users who do not have permission to view them.

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

### -ContinuousAvailabilityEnabled

If set to `$True`, enables continuous availability on the policy. When continuous availability is enabled on a policy, file shares are accessible during otherwise disruptive scenarios such as temporary network outages, controller upgrades or failovers.

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

### -Enabled

If set to `$True`, enables the policy. If set to `$False`, disables the policy.

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

### -Id

Performs the operation on the unique resource IDs specified. Enter multiple resource IDs. The `Id` or `Name` parameter is required, but they cannot be set together.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: Ids

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name

Performs the operation on the unique name specified. Enter multiple names. The name is expected to be fully qualified, meaning if the object is contained in some context, the corresponding name would provide complete information about the containment hierarchy. For example, `name01,pod01::name01`.

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

### -PolicyName

The new name for the resource.

```yaml
Type: String
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

### String

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Get-Pfa2PolicySmb](Get-Pfa2PolicySmb.md)

[New-Pfa2PolicySmb](New-Pfa2PolicySmb.md)

[Remove-Pfa2PolicySmb](Remove-Pfa2PolicySmb.md)
