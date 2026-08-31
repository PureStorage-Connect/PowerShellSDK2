---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2DirectoryServiceLocalUser

## SYNOPSIS

Modify local user

## SYNTAX

```
Update-Pfa2DirectoryServiceLocalUser [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-KeepOpenSession <Boolean>]
 [-LocalDirectoryServiceId <List[String]>]
 [-LocalDirectoryServiceName <List[String]>] [-Name <String>]
 [-Sid <List[String]>]
 [-Uid <List[Int32]>] [-Email <String>] [-Enabled <Boolean>]
 [-LocalUserName <String>] [-Password <String>] [-NewUid <Int32>] [-PrimaryGroupId <String>]
 [-PrimaryGroupName <String>] [-PrimaryGroupResourceType <String>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies a local user.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2DirectoryServiceLocalUser -Array $FlashArray -Name 'jsmith' -Enabled $true
```

Sets -Enabled on the local directory user named 'jsmith'.

### Example 2
```powershell
Update-Pfa2DirectoryServiceLocalUser -Array $FlashArray -Name 'jsmith' -KeepOpenSession $true
```

Sets -KeepOpenSession on the local directory user named 'jsmith'.

### Example 3
```powershell
Update-Pfa2DirectoryServiceLocalUser -Array $FlashArray -Name 'jsmith' -LocalDirectoryServiceName 'directory-service-01'
```

Sets -LocalDirectoryServiceName on the local directory user named 'jsmith'.

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

### -Email

Optional field to set the email of the local user.

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

### -Enabled

If this field is `$False`, the local user will be disabled on creation. Otherwise, the local user will be enabled and functional from the beginning.

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

### -KeepOpenSession

If set to `$True`, the session does not expire. If set to `$False`, when the user is disabled or password is changed, the session expires. If not specified, defaults to `$False`.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: KeepOpenSessions

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

### -LocalUserName

The local user name.

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

### -NewUid

Optional field to set the UID of the local user.

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

### -Password

The password of the local user. This field is only required if the `Enabled` field is $True.

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

### -PrimaryGroupId

Local group that would be assigned as the primary group of the local user.

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

### -PrimaryGroupName

Local group that would be assigned as the primary group of the local user.

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

### -PrimaryGroupResourceType

Local group that would be assigned as the primary group of the local user.  Local group that would be assigned as the primary group of the local user.

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

### -Sid

Performs the operation on the object SID specified. Enter multiple SIDs. For example, `S-1-2-532-582374278-329482934,S-1-2-532-234235245-423425234`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: Sids

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Uid

A list of local user IDs (UIDs). Enter multiple local user IDs. For example, `423,51234`.

```yaml
Type: List[Int32]
Parameter Sets: (All)
Aliases: Uids

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

[Get-Pfa2DirectoryServiceLocalUser](Get-Pfa2DirectoryServiceLocalUser.md)

[New-Pfa2DirectoryServiceLocalUser](New-Pfa2DirectoryServiceLocalUser.md)

[Remove-Pfa2DirectoryServiceLocalUser](Remove-Pfa2DirectoryServiceLocalUser.md)
