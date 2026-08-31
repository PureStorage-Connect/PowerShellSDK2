---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Remove-Pfa2PolicySmbMember

## SYNOPSIS

(REST API 2.3+) Delete SMB policies

## SYNTAX

```
Remove-Pfa2PolicySmbMember [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-MemberId <List[String]>]
 [-MemberName <List[String]>]
 [-MemberType <List[String]>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-ServerId <List[String]>]
 [-ServerName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Deletes one or more SMB policies from resources. The `PolicyId` or `PolicyName` parameter is required, but cannot be set together. The `MemberId` or `MemberName` parameter is required, but cannot be set together.

## EXAMPLES

### Example 1
```powershell
Remove-Pfa2PolicySmbMember -Array $FlashArray -PolicyName 'smb-default' -MemberName 'fs-prod-01:home'
```

Removes managed directory 'fs-prod-01:home' from SMB policy 'smb-default'. The managed directory itself is not deleted.

### Example 2
```powershell
Get-Pfa2PolicySmbMember -Array $FlashArray -PolicyName 'smb-default' | ForEach-Object { Remove-Pfa2PolicySmbMember -Array $FlashArray -PolicyName 'smb-default' -MemberName $_.Member.Name }
```

Removes every current member of SMB policy 'smb-default'.

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

### -MemberId

Performs the operation on the unique member IDs specified. Enter multiple member IDs. The `MemberId` or `MemberName` parameter is required, but they cannot be set together.

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

Performs the operation on the unique member name specified. Examples of members include volumes, hosts, host groups, and directories. Enter multiple names. For example, `vol01,vol02`.

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

### -MemberType

Performs the operation on the member types specified. The type of member is the full name of the resource endpoint. Valid values include `directories`. Enter multiple member types. For example, `type01,type02`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: MemberTypes

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

Performs the operation on the policy names specified. Enter multiple policy names. The name is expected to be fully qualified, meaning if the object is contained in some context, the corresponding name would provide complete information about the containment hierarchy. For example, `policy01,pod01::policy01`.

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

### -ServerId

A list of server IDs.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ServerIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerName

Server names for which the export object is going to be evaluated. Names are expected to be fully qualified, meaning if the object is contained in some context, the corresponding name would provide complete information about the containment hierarchy. For example, `server01,server02`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ServerNames

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

[Get-Pfa2PolicySmbMember](Get-Pfa2PolicySmbMember.md)

[New-Pfa2PolicySmbMember](New-Pfa2PolicySmbMember.md)
