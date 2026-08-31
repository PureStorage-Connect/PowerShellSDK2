---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2Directory

## SYNOPSIS

(REST API 2.3+) Create directory

## SYNTAX

```
New-Pfa2Directory [-Array <Rest2Api>] [-XRequestID <String>]
 [-AddToPolicyIds <List[String]>]
 [-AddToPolicyNames <List[String]>]
 [-ContextName <List[String]>]
 [-FileSystemId <List[String]>]
 [-FileSystemName <List[String]>] [-IgnoreUsage <Boolean>] [-Name <String>]
 [-WithDefaultProtection <Boolean>] [-DirectoryName <String>] [-Path <String>] [-SourceId <String>]
 [-SourceName <String>] [-WorkloadId <String>] [-WorkloadName <String>] [-WorkloadConfiguration <String>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a managed directory at the specified path. The managed directory name must consist of a file system name prefix and a managed directory name suffix (separated with ':'). The suffix must be between 1 and 63 characters (alphanumeric and '-') in length and begin and end with a letter or number. The suffix must include at least one letter or '-'. Set `Name` to create a managed directory with the specified full managed directory name, or set `FileSystemName` or `FileSystemId` in the query parameters and `suffix` in the body parameters to create a managed directory in the specified file system with the specified suffix. These two options are exclusive.

## EXAMPLES

### Example 1
```powershell
New-Pfa2Directory -Array $FlashArray -Name 'fs-prod-01:home'
```

Creates a managed directory named 'fs-prod-01:home'.

### Example 2
```powershell
New-Pfa2Directory -Array $FlashArray -Name 'fs-prod-01:home' -WorkloadName 'sql-prod-workload' -AddToPolicyNames 'nfs-default'
```

Creates a managed directory and sets -WorkloadName and -AddToPolicyNames in the same call.

## PARAMETERS

### -AddToPolicyIds

The IDs of the policies to attach to the new object as it is created. The `AddToPolicyIds` or `AddToPolicyNames` parameter can be used, but not both.

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

### -AddToPolicyNames

The names of the policies to attach to the new object as it is created, so it is governed from the moment it exists. The `AddToPolicyIds` or `AddToPolicyNames` parameter can be used, but not both.

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

### -DirectoryName

The managed directory name without the file system name prefix. A full managed directory name is constructed in the form of `FILE_SYSTEM:DIR` where `FILE_SYSTEM` is the file system name and `DIR` is the value of this field. `DirectoryName` is required if `FileSystemName` or `FileSystemId` is set. `DirectoryName` cannot be set if `Name` is set.

```yaml
Type: String
Parameter Sets: (All)
Aliases: DirectoryNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileSystemId

Performs the operation on the file system ID specified. Enter multiple file system IDs. The `FileSystemId` or `FileSystemName` parameter is required, but they cannot be set together.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: FileSystemIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FileSystemName

Performs the operation on the file system name specified. Enter multiple file system names. For example, `filesystem01,filesystem02`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: FileSystemNames

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

### -Path

Path of the managed directory in the file system.

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

### -SourceId

Performs the operation on the source ID specified. Enter multiple source IDs.

```yaml
Type: String
Parameter Sets: (All)
Aliases: SourceIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceName

Performs the operation on the source name specified. Enter multiple source names. For example, `name01,name02`.

```yaml
Type: String
Parameter Sets: (All)
Aliases: SourceNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WithDefaultProtection

If specified as `$True`, the initial protection of the newly created volumes will be the union of the container default protection configuration and `AddToProtectionGroupNames`. If specified as `$False`, the default protection of the container will not be applied automatically. The initial protection of the newly created volumes will be configured by `AddToProtectionGroupNames`. If not specified, defaults to `$True`.

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

### -WorkloadConfiguration

The workload to which the volume is added. Set one of `SourceId` or `SourceName`, and `WorkloadConfiguration` to add the volume to the workload and configure it based on the `WorkloadConfiguration` from the preset the workload was originally provisioned from.  The workload to which the volume is added. Set one of `SourceId` or `SourceName`, and `WorkloadConfiguration` to add the volume to the workload and configure it based on the `WorkloadConfiguration` from the preset the workload was originally provisioned from.

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

### -WorkloadId

The workload to which the volume is added. Set one of `SourceId` or `SourceName`, and `WorkloadConfiguration` to add the volume to the workload and configure it based on the `WorkloadConfiguration` from the preset the workload was originally provisioned from.

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

### -WorkloadName

The workload to which the volume is added. Set one of `SourceId` or `SourceName`, and `WorkloadConfiguration` to add the volume to the workload and configure it based on the `WorkloadConfiguration` from the preset the workload was originally provisioned from.

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

[Get-Pfa2Directory](Get-Pfa2Directory.md)

[Remove-Pfa2Directory](Remove-Pfa2Directory.md)

[Update-Pfa2Directory](Update-Pfa2Directory.md)
