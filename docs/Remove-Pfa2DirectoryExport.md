---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Remove-Pfa2DirectoryExport

## SYNOPSIS

(REST API 2.3+) Delete directory exports

## SYNTAX

```
Remove-Pfa2DirectoryExport [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-DirectoryId <List[String]>]
 [-DirectoryName <List[String]>]
 [-ExportName <List[String]>] [-Name <String>]
 [-PolicyId <List[String]>]
 [-PolicyName <List[String]>]
 [-ServerId <List[String]>]
 [-ServerName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Deletes one or more directory exports. If any of the `ExportName` is not unique across the system, `PolicyId` or `PolicyName` must be specified to determine the exports. When server reference is not provided, the `_array_server` is set as effective default. The API provides two options for identifying an export object. One option is to reference it by its fully qualified export name, or alternatively, by a combination of parameters-specifically, the `ServerName` (or `ServerId`) and `ExportName`. All identifying parameters must always be provided, either explicitly or as part of the fully qualified name.

## EXAMPLES

### Example 1
```powershell
Remove-Pfa2DirectoryExport -Array $FlashArray -Name 'home-nfs-export'
```

Deletes the directory export named 'home-nfs-export'.

### Example 2
```powershell
Remove-Pfa2DirectoryExport -Array $FlashArray -Name 'home-nfs-export' -DirectoryName 'fs-prod-01:home'
```

Deletes the directory export, also specifying -DirectoryName.

### Example 3
```powershell
Remove-Pfa2DirectoryExport -Array $FlashArray -Name 'home-nfs-export' -ExportName 'export-01'
```

Deletes the directory export, also specifying -ExportName.

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

Performs the operation on the managed directory names specified. Enter multiple full managed directory names. The name is expected to be fully qualified, meaning if the object is contained in some context, the corresponding name would provide complete information about the containment hierarchy. For example, `fs:dir01,pod01::fs:dir01`.

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

### -ExportName

Performs the operation on the export names specified.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ExportNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name

Performs the operation on the unique name specified. Enter multiple names. Combines the export containment hierarchy (server), the protocol (smb or nfs) and the export_name. For example, `server01::smb::export01,server01::nfs::export01`.

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

### String

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Get-Pfa2DirectoryExport](Get-Pfa2DirectoryExport.md)

[New-Pfa2DirectoryExport](New-Pfa2DirectoryExport.md)
