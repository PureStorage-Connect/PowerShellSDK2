---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2DirectoryServiceLocalGroupMember

## SYNOPSIS

Create local group membership

## SYNTAX

```
New-Pfa2DirectoryServiceLocalGroupMember [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-GroupGid <List[Int32]>]
 [-GroupName <List[String]>]
 [-GroupSid <List[String]>]
 [-LocalDirectoryServiceId <List[String]>]
 [-LocalDirectoryServiceName <List[String]>]
 [-MemberId <List[String]>]
 [-MemberName <List[String]>]
 [-MemberResourceType <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a local group membership with a group. The `GroupName`, `GroupSid`, or `GroupGid` parameter is required, but cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2DirectoryServiceLocalGroupMember -Array $FlashArray -GroupName 'storage-admins' -MemberName 'jsmith'
```

Adds local directory user 'jsmith' to local directory group 'storage-admins'.

### Example 2
```powershell
New-Pfa2DirectoryServiceLocalGroupMember -Array $FlashArray -GroupName 'storage-admins' -MemberName 'jsmith', 'jsmith-02'
```

Adds several local directory users to local directory group 'storage-admins' in a single call.

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

[Remove-Pfa2DirectoryServiceLocalGroupMember](Remove-Pfa2DirectoryServiceLocalGroupMember.md)
