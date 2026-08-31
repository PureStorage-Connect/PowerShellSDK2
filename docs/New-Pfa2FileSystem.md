---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2FileSystem

## SYNOPSIS

(REST API 2.3+) Create file system

## SYNTAX

```
New-Pfa2FileSystem [-Array <Rest2Api>] [-XRequestID <String>]
 [-AddToPolicyIds <List[String]>]
 [-AddToPolicyNames <List[String]>]
 [-ContextName <List[String]>] [-Name <String>]
 [-WithDefaultProtection <Boolean>] [-WorkloadId <String>] [-WorkloadName <String>]
 [-WorkloadConfiguration <String>] [-ApiVersion <String>]
 [<CommonParameters>]
```

## DESCRIPTION

Creates one or more file systems.

## EXAMPLES

### Example 1
```powershell
New-Pfa2FileSystem -Array $FlashArray -Name 'fs-prod-01'
```

Creates a managed file system named 'fs-prod-01'.

### Example 2
```powershell
New-Pfa2FileSystem -Array $FlashArray -Name 'fs-prod-01' -WorkloadName 'sql-prod-workload' -AddToPolicyNames 'nfs-default'
```

Creates a managed file system and sets -WorkloadName and -AddToPolicyNames in the same call.

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

### -Name

Performs the operation on the unique name specified. For example, `name01`. Enter multiple names.

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

[Get-Pfa2FileSystem](Get-Pfa2FileSystem.md)

[Remove-Pfa2FileSystem](Remove-Pfa2FileSystem.md)

[Update-Pfa2FileSystem](Update-Pfa2FileSystem.md)
