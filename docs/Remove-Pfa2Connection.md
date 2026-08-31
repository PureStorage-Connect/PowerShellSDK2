---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Remove-Pfa2Connection

## SYNOPSIS

(REST API 2.0+) Delete a connection between a volume and its host or host group

## SYNTAX

```
Remove-Pfa2Connection [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-HostGroupName <List[String]>]
 [-HostName <List[String]>]
 [-VolumeId <List[String]>]
 [-VolumeName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Deletes the connection between a volume and its associated host or host group. One of `VolumeName` or `VolumeId` and one of `HostName` or `HostGroupName` query parameters are required.

## EXAMPLES

### Example 1
```powershell
Remove-Pfa2Connection -Array $FlashArray -VolumeName 'db-vol-01' -HostName 'esx-host-01'
```

Disconnects a volume from a host. Neither the volume nor the host is deleted.

### Example 2
```powershell
Remove-Pfa2Connection -Array $FlashArray -VolumeName 'db-vol-01' -HostGroupName 'esx-cluster-01'
```

Disconnects a volume from a host group.

### Example 3
```powershell
Remove-Pfa2Connection -Array $FlashArray -HostGroupName 'esx-cluster-01' -HostName 'esx-host-01'
```

Deletes the volume-to-host connection.

### Example 4
```powershell
Remove-Pfa2Connection -Array $FlashArray -HostGroupName 'esx-cluster-01'
```

Deletes the volume-to-host connection, also specifying -HostGroupName.

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

### -HostGroupName

Performs the operation on the host group specified. Enter multiple names. A request cannot include a mix of multiple objects with multiple names. For example, a request cannot include a mix of multiple host group names and volume names; instead, at least one of the objects (e.g., `HostGroupName`) must be set to only one name (e.g., `hgroup01`).

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: HostGroupNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HostName

Performs the operation on the hosts specified. Enter multiple names. For example, `host01,host02`. A request cannot include a mix of multiple objects with multiple names. For example, a request cannot include a mix of multiple host names and volume names; instead, at least one of the objects (e.g., `HostName`) must be set to only one name (e.g., `host01`).

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: HostNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeId

Performs the operation on the specified volume. Enter multiple ids. For example, `vol01id,vol02id`. A request cannot include a mix of multiple objects with multiple IDs. For example, a request cannot include a mix of multiple volume IDs and host names; instead, at least one of the objects (e.g., `VolumeId`) must be set to only one name (e.g., `vol01id`). Only one of the two between `VolumeName` and `VolumeId` may be used at a time.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: VolumeIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VolumeName

Performs the operation on the volume specified. Enter multiple names. For example, `vol01,vol02`. A request cannot include a mix of multiple objects with multiple names. For example, a request cannot include a mix of multiple volume names and host names; instead, at least one of the objects (e.g., `VolumeName`) must be set to only one name (e.g., `vol01`).

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: VolumeNames

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

[Get-Pfa2Connection](Get-Pfa2Connection.md)

[New-Pfa2Connection](New-Pfa2Connection.md)
