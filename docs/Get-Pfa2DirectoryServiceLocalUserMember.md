---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Get-Pfa2DirectoryServiceLocalUserMember

## SYNOPSIS

List local user memberships

## SYNTAX

```
Get-Pfa2DirectoryServiceLocalUserMember [-Array <Rest2Api>] [-XRequestID <String>] [-AllowError <Boolean>]
 [-ContextName <List[String]>] [-Filter <String>]
 [-GroupGid <List[Int32]>]
 [-GroupName <List[String]>]
 [-GroupSid <List[String]>] [-Limit <Int32>]
 [-MemberId <List[Int32]>]
 [-MemberName <List[String]>]
 [-MemberSid <List[String]>] [-Offset <Int32>]
 [-Sort <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Displays a list of local user memberships.

## EXAMPLES

### Example 1
```powershell
Get-Pfa2DirectoryServiceLocalUserMember -Array $FlashArray
```

Lists every local directory user-to-local directory group membership on the array.

### Example 2
```powershell
Get-Pfa2DirectoryServiceLocalUserMember -Array $FlashArray -GroupName 'storage-admins'
```

Lists the local directory users that belong to local directory group 'storage-admins'.

### Example 3
```powershell
Get-Pfa2DirectoryServiceLocalUserMember -Array $FlashArray -GroupName 'storage-admins' -MemberName 'jsmith'
```

Checks whether local directory user 'jsmith' is a member of local directory group 'storage-admins'.

### Example 4
```powershell
Get-Pfa2DirectoryServiceLocalUserMember -Array $FlashArray -Filter "name='user*'"
```

Returns only the directory service local user members matching a server-side filter expression. For the filter syntax, run `Help about_Pfa2Filtering`.

## PARAMETERS

### -AllowError

If set to `$True`, the API will allow the operation to continue even if there are errors. Any errors will be returned in the `errors` field of the response. If set to `$False`, the operation will fail if there are any errors.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: AllowErrors

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

Performs the operation on the unique contexts specified. If specified, each context name must be the name of an array in the same fleet. If not specified, the context will default to the array that received this request.  Other parameters provided with the request, such as names of volumes or snapshots, are resolved relative to the provided `context`.

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

### -Filter

Narrows down the results to only the response objects that satisfy the filter criteria. For more information of filtering, run `Help About_Pfa2Filtering`

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

### -Limit

Limits the size of the response to the specified number of objects on each page. To return the total number of resources, set `Limit=0`. The total number of resources is returned as a `TotalItemCount` value. If the page size requested is larger than the system maximum limit, the server returns the maximum limit, disregarding the requested page size.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

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

### -Offset

The starting position based on the results of the query in relation to the full set of response objects returned.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Sort

Returns the response objects in the order specified. Set `Sort` to the name in the response by which to sort. Sorting can be performed on any of the names in the response, and the objects can be sorted in ascending or descending order. By default, the response objects are sorted in ascending order. To sort in descending order, append the minus sign (`-`) to the name. A single request can be sorted on multiple objects. For example, you can sort all volumes from largest to smallest volume size, and then sort volumes of the same size in ascending order by volume name. To sort on multiple names, list the names.

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

[New-Pfa2DirectoryServiceLocalUserMember](New-Pfa2DirectoryServiceLocalUserMember.md)

[Remove-Pfa2DirectoryServiceLocalUserMember](Remove-Pfa2DirectoryServiceLocalUserMember.md)
