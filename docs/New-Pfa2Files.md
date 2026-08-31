---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2Files

## SYNOPSIS

Create a file copy

## SYNTAX

```
New-Pfa2Files [-Array <Rest2Api>] [-XRequestID <String>]
 [-DirectoryId <List[String]>]
 [-DirectoryName <List[String]>] [-Overwrite <Boolean>]
 [-Paths <List[String]>] [-SourcePath <String>] [-SourceId <String>]
 [-SourceName <String>] [-SourceResourceType <String>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a file copy from one path to another path. The `DirectoryId`, `DirectoryName` or `Paths` value must be specified. If the `DirectoryId` or `DirectoryName` value is not specified, the file is copied to the source directory specified in the body params. The `Paths` value refers to the path of the target file relative to the target directory. If `Paths` value is not specified, the file will be copied to the relative path specified in `SourcePath` under the target directory. The `SourcePath` value refers to the path of the source file relative to the source directory. To overwrite an existing file, set the `Overwrite` flag to `$True`.

## EXAMPLES

### Example 1
```powershell
New-Pfa2Files -Array $FlashArray -DirectoryName 'fs-prod-01:home' -SourceName 'fs-prod-01:home.daily' -Paths '/home/reports'
```

Restores a path from a directory snapshot back into the live directory.

### Example 2
```powershell
New-Pfa2Files -Array $FlashArray -DirectoryName 'fs-prod-01:home' -SourceName 'fs-prod-01:home.daily' -SourcePath '/home/reports' -Paths '/home/reports-restored' -Overwrite $false
```

Restores a path to a different location, leaving any existing files alone.

### Example 3
```powershell
New-Pfa2Files -Array $FlashArray -DirectoryName 'fs-prod-01:home' -Paths '/home/reports' -SourcePath '/home/reports'
```

Creates a file restore operation on the array.

### Example 4
```powershell
New-Pfa2Files -Array $FlashArray -DirectoryName 'fs-prod-01:home'
```

Creates a file restore operation specifying only -DirectoryName.

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

### -DirectoryId

Performs the operation on the unique managed directory IDs specified. Enter multiple managed directory IDs. The `DirectoryId` or `DirectoryName` parameter is required, but they cannot be set together.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: DirectoryIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DirectoryName

Performs the operation on the managed directory names specified. Enter multiple full managed directory names. For example, `fs:dir01,fs:dir02`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: DirectoryNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Overwrite

If set to `$True`, overwrites an existing object during an object copy operation. If set to `$False` or not set at all and the target name is an existing object, the copy operation fails. Required if the `source` body parameter is set and the source overwrites an existing object during the copy operation.

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

### -Paths

Target file path relative to the target directory. Enter multiple target file path in a comma-separated format. For example, `/dir1/dir2/file1,/dir3/dir4/file2`.

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

### -SourceId

The source information of a file copy.

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

The source information of a file copy.

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

### -SourcePath

The source file path relative to the source directory.

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

### -SourceResourceType

The source information of a file copy.  The source information of a file copy.

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

### None

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)
