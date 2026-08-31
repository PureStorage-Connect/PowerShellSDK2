---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Get-Pfa2Connection

## SYNOPSIS

(REST API 2.0+) List volume connections

## SYNTAX

```
Get-Pfa2Connection [-Array <Rest2Api>] [-XRequestID <String>] [-AllowError <Boolean>]
 [-ContextName <List[String]>] [-Filter <String>]
 [-HostGroupName <List[String]>]
 [-HostName <List[String]>] [-Limit <Int32>] [-Offset <Int32>]
 [-ProtocolEndpointId <List[String]>]
 [-ProtocolEndpointName <List[String]>]
 [-Sort <List[String]>]
 [-VolumeId <List[String]>]
 [-VolumeName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Displays a list of connections between a volume and its hosts and host groups, as well as the logical unit numbers (LUNs) or NVMe Namespace IDs (NSIDs) used by the associated hosts to address these volumes.

## EXAMPLES

### Example 1
```powershell
Get-Pfa2Connection -Array $FlashArray
```

Lists every volume-to-host connection on the array.

### Example 2
```powershell
Get-Pfa2Connection -Array $FlashArray -HostName 'esx-host-01' | Format-Table Volume, Lun -AutoSize
```

Lists the volumes connected to one host and the LUN each is presented at.

### Example 3
```powershell
Get-Pfa2Connection -Array $FlashArray -VolumeName 'db-vol-01'
```

Shows every host and host group that can see a given volume.

### Example 4
```powershell
Get-Pfa2Connection -Array $FlashArray -HostName $Host_.Name
```

Get connections the host $Host_.Name is related with.

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

### -ProtocolEndpointId

Performs the operation on the protocol endpoints specified. Enter multiple IDs. For example, `peid01,peid02`. A request cannot include a mix of multiple objects with multiple IDs. For example, a request cannot include a mix of multiple protocol endpoint IDs and host names. Instead, at least one of the objects (e.g., `ProtocolEndpointId`) must be set to one ID (e.g., `peid01`).

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ProtocolEndpointIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtocolEndpointName

Performs the operation on the protocol endpoints specified. Enter multiple names. For example, `pe01,pe02`. A request cannot include a mix of multiple objects with multiple names. For example, a request cannot include a mix of multiple protocol endpoint names and host names; instead, at least one of the objects (e.g., `ProtocolEndpointName`) must be set to one name (e.g., `pe01`).

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ProtocolEndpointNames

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

[New-Pfa2Connection](New-Pfa2Connection.md)

[Remove-Pfa2Connection](Remove-Pfa2Connection.md)
