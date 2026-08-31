---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Get-Pfa2VchostConnection

## SYNOPSIS

List the vchost-connections between protocol endpoint and vchost.

## SYNTAX

```
Get-Pfa2VchostConnection [-Array <Rest2Api>] [-XRequestID <String>] [-AllVchosts <Boolean>] [-Filter <String>]
 [-Limit <Int32>] [-Offset <Int32>] [-ProtocolEndpointId <List[String]>]
 [-ProtocolEndpointName <List[String]>]
 [-Sort <List[String]>]
 [-VchostId <List[String]>]
 [-VchostName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Displays a list of vchost-connections between the protocol endpoint and vchost.

## EXAMPLES

### Example 1
```powershell
Get-Pfa2VchostConnection -Array $FlashArray
```

Lists all vchost connections on the array.

### Example 2
```powershell
Get-Pfa2VchostConnection -Array $FlashArray -Filter "name='vchost*'"
```

Returns only the vchost connections matching a server-side filter expression. For the filter syntax, run `Help about_Pfa2Filtering`.

### Example 3
```powershell
Get-Pfa2VchostConnection -Array $FlashArray -Limit 25 -Sort 'name-'
```

Returns the first 25 vchost connections sorted by name in descending order. Append `-` to a field name to reverse the sort.

## PARAMETERS

### -AllVchosts

If set to `$True`, the storage container represented by the protocol endpoint is accessible to all vchosts. Users should not specify `VchostId` or `VchostName` in the request. If set to `$False`, the storage container represented by the protocol endpoint is only accessible to the vchosts that have explicit vchost-connections with the protocol endpoint. Users need to specify `VchostId` or `VchostName` in the request.

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

A list of protocol endpoint IDs. Performs the operation on the protocol endpoints specified. For example, `peid01,peid02`. Cannot be used in conjunction with `ProtocolEndpointName`. If the list contains more than one value, then `VchostId` or `VchostName` must have exactly one value.

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

A list of protocol endpoint names. Performs the operation on the protocol endpoints specified. For example, `pe01,pe02`. Cannot be used in conjunction with `ProtocolEndpointId`. If the list contains more than one value, then `VchostId` or `VchostName` must have exactly one value.

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

### -VchostId

A list of vchost IDs. Performs the operation on the vchosts specified. For example, `vchostid01,vchostid02`. Cannot be used in conjunction with `VchostName`. If the list contains more than one value, then `ProtocolEndpointId` or `ProtocolEndpointName` must have exactly one value.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: VchostIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VchostName

A list of vchost names. Performs the operation on the vchosts specified. For example, `vchost01,vchost02`. Cannot be used in conjunction with `VchostId`. If the list contains more than one value, then `ProtocolEndpointId` or `ProtocolEndpointName` must have exactly one value.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: VchostNames

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

[New-Pfa2VchostConnection](New-Pfa2VchostConnection.md)

[Remove-Pfa2VchostConnection](Remove-Pfa2VchostConnection.md)
