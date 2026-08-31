---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2DirectoryServiceLocalUserMember

## SYNOPSIS

Create local user membership

## SYNTAX

```
New-Pfa2DirectoryServiceLocalUserMember [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-LocalDirectoryServiceId <List[String]>]
 [-LocalDirectoryServiceName <List[String]>]
 [-MemberId <List[Int32]>]
 [-MemberName <List[String]>]
 [-MemberSid <List[String]>] [-IsPrimary <Boolean>]
 [-GroupGid <List[Int32]>]
 [-GroupId <List[String]>]
 [-GroupName <List[String]>]
 [-GroupResourceType <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a local user membership with a group. The `MemberName` or `MemberSid` or `MemberId` parameter is required, but cannot be set together.

## EXAMPLES

### Example 1
```powershell
New-Pfa2DirectoryServiceLocalUserMember -Array $FlashArray -GroupName 'storage-admins' -MemberName 'jsmith'
```

Adds local directory user 'jsmith' to local directory group 'storage-admins'.

### Example 2
```powershell
New-Pfa2DirectoryServiceLocalUserMember -Array $FlashArray -GroupName 'storage-admins' -MemberName 'jsmith', 'jsmith-02'
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

The group GID that should be mapped.

reference: LocalusermembershippostGroups

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

### -GroupId

A globally unique, system-generated ID. The ID cannot be modified.

reference: ReferenceWithType

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: GroupIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: ReferenceWithType

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

### -GroupResourceType

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

### -IsPrimary

Determines whether memberships are primary group memberships or not.

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

[Get-Pfa2DirectoryServiceLocalUserMember](Get-Pfa2DirectoryServiceLocalUserMember.md)

[Remove-Pfa2DirectoryServiceLocalUserMember](Remove-Pfa2DirectoryServiceLocalUserMember.md)
