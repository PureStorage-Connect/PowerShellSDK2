---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Remove-Pfa2DirectoryServiceLocalGroupMember

## SYNOPSIS

Delete local group membership

## SYNTAX

```
Remove-Pfa2DirectoryServiceLocalGroupMember [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-GroupGid <List[Int32]>]
 [-GroupName <List[String]>]
 [-GroupSid <List[String]>]
 [-LocalDirectoryServiceId <List[String]>]
 [-LocalDirectoryServiceName <List[String]>]
 [-MemberId <List[Int32]>]
 [-MemberName <List[String]>]
 [-MemberSid <List[String]>]
 [-MemberType <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Deletes one or more local group memberships. The `GroupName`, `GroupSid`, or `GroupGid` parameter is required, but cannot be set together. The `MemberName`, `MemberSid`, or `member_gids` parameter is required, but cannot be set together.

## EXAMPLES

### Example 1
```powershell
Remove-Pfa2DirectoryServiceLocalGroupMember -Array $FlashArray -GroupName 'storage-admins' -MemberName 'jsmith'
```

Removes local directory user 'jsmith' from local directory group 'storage-admins'. The local directory user itself is not deleted.

### Example 2
```powershell
Get-Pfa2DirectoryServiceLocalGroupMember -Array $FlashArray -GroupName 'storage-admins' | ForEach-Object { Remove-Pfa2DirectoryServiceLocalGroupMember -Array $FlashArray -GroupName 'storage-admins' -MemberName $_.Member.Name }
```

Removes every current member of local directory group 'storage-admins'.

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

### -GroupGid

Performs the operation on the specified GIDs. Enter multiple GIDs. For example, `4234235,9681923`.

```yaml
Type: List[Int32]
Parameter Sets: (All)
Aliases: GroupGids

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupName

Performs the operation on the group names specified. Enter multiple group names. For example, `group1,group2`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: GroupNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupSid

Performs the operation on the specified group SID. Enter multiple group SIDs. For example, `S-1-2-532-582374278-329482934,S-1-2-532-234235245-423425234`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: GroupSids

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocalDirectoryServiceId

Performs the operation on the specified local directory service. Supports exactly one value. When not specified, the local directory service connected to the `_array_server` will be used. This cannot be provided in conjunction with the `LocalDirectoryServiceName` parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: LocalDirectoryServiceIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocalDirectoryServiceName

Performs the operation on the specified local directory service. Supports exactly one value. When not specified, the local directory service connected to the `_array_server` will be used. This cannot be provided in conjunction with the `LocalDirectoryServiceId` parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: LocalDirectoryServiceNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MemberId

Performs the operation on the unique local member IDs specified. Enter multiple member IDs. For local group IDs refer to group IDs (GID). For local user IDs refer to user IDs (UID). The `MemberId` and `MemberName` parameters cannot be provided together.

```yaml
Type: List[Int32]
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

### -MemberSid

Performs the operation on the specified member SID. Enter multiple member SIDs. For example, `S-1-2-532-582374278-329482934,S-1-2-532-234235245-423425234`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: MemberSids

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

[Get-Pfa2DirectoryServiceLocalGroupMember](Get-Pfa2DirectoryServiceLocalGroupMember.md)

[New-Pfa2DirectoryServiceLocalGroupMember](New-Pfa2DirectoryServiceLocalGroupMember.md)
