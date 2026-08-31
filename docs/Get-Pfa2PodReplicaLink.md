---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Get-Pfa2PodReplicaLink

## SYNOPSIS

(REST API 2.2+) List pod replica links

## SYNTAX

```
Get-Pfa2PodReplicaLink [-Array <Rest2Api>] [-XRequestID <String>] [-AllowError <Boolean>]
 [-ContextName <List[String]>] [-Filter <String>]
 [-Id <List[String]>] [-Limit <Int32>]
 [-LocalPodId <List[String]>]
 [-LocalPodName <List[String]>] [-Offset <Int32>]
 [-RemoteId <List[String]>]
 [-RemoteName <List[String]>]
 [-RemotePodId <List[String]>]
 [-RemotePodName <List[String]>]
 [-Sort <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Displays the list of pod replica links that are configured between arrays.

## EXAMPLES

### Example 1
```powershell
Get-Pfa2PodReplicaLink -Array $FlashArray
```

Get POD replica links from FlashArray.

### Example 2
```powershell
Get-Pfa2PodReplicaLink -Array $FlashArray -LocalPodNames $LocalPodName -RemotePodNames $RemotePodName
```

Get POD replica links from FlashArray where local pod names is $LocalPodName and remote pod names is $RemotePodName.

### Example 3
```powershell
Get-Pfa2PodReplicaLink -Array $FlashArray -Filter "name='prod*'"
```

Returns only the pod replica links matching a server-side filter expression. For the filter syntax, run `Help about_Pfa2Filtering`.

### Example 4
```powershell
Get-Pfa2PodReplicaLink -Array $FlashArray -Limit 25 -Sort 'name-'
```

Returns the first 25 pod replica links sorted by name in descending order. Append `-` to a field name to reverse the sort.

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

### -Id

Performs the operation on the unique resource IDs specified. Enter multiple resource IDs. The `Id` or `names` parameter is required, but they cannot be set together.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: Ids

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

### -LocalPodId

A list of local pod IDs. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `LocalPodName` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: LocalPodIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocalPodName

A list of local pod names. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `LocalPodId` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: LocalPodNames

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

### -RemoteId

A list of remote array IDs. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `RemoteName` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemoteIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoteName

A list of remote array names. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `RemoteId` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemoteNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemotePodId

A list of remote pod IDs. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `RemotePodName` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemotePodIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemotePodName

A list of remote pod names. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `RemotePodId` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemotePodNames

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

[New-Pfa2PodReplicaLink](New-Pfa2PodReplicaLink.md)

[Remove-Pfa2PodReplicaLink](Remove-Pfa2PodReplicaLink.md)

[Update-Pfa2PodReplicaLink](Update-Pfa2PodReplicaLink.md)
