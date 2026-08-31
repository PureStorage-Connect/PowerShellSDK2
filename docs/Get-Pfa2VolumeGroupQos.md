---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Get-Pfa2VolumeGroupQos

## SYNOPSIS

(REST API 2.42+) List volume group QoS settings

## SYNTAX

```
Get-Pfa2VolumeGroupQos [-Array <Rest2Api>] [-XRequestID <String>] [-AllowError <Boolean>]
 [-ContextName <List[String]>] [-Destroyed <Boolean>] [-EndTime <DateTime>]
 [-Filter <String>] [-Id <List[String]>] [-Limit <Int32>] [-Name <String>]
 [-Offset <Int32>] [-Resolution <Int64>] [-Sort <List[String]>]
 [-StartTime <DateTime>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Displays the bandwidth and IOPS limits in effect for volume groups.

## EXAMPLES

### Example 1
```powershell
Get-Pfa2VolumeGroupQos -Array $FlashArray
```

Returns QoS settings for every volume group on the array.

### Example 2
```powershell
Get-Pfa2VolumeGroupQos -Array $FlashArray -Name 'sql-vg'
```

Returns QoS settings for volume group 'sql-vg'.

### Example 3
```powershell
Get-Pfa2VolumeGroupQos -Array $FlashArray -Name 'sql-vg' -StartTime (Get-Date).AddHours(-24) -EndTime (Get-Date) -Resolution 30000
```

Returns QoS settings samples for the last 24 hours at 30-second resolution. Omit -Resolution to let the array pick the coarsest resolution that covers the window.

### Example 4
```powershell
Get-Pfa2VolumeGroupQos -Array $FlashArray -Destroyed $true
```

Lists only the volume groups that are destroyed and pending eradication.

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

### -Destroyed

If set to `$True`, lists only destroyed objects that are in the eradication pending state. If set to `$False`, lists only objects that are not destroyed. If not set, lists both objects that are destroyed and those that are not destroyed. For destroyed objects, the time remaining is displayed in milliseconds.  If object name(s) or id(s) are specified, then each object referenced must exist. If `Destroyed` is set to `$True`, then each object referenced must also be destroyed. If `Destroyed` is set to `$False`, then each object referenced must also not be destroyed. An error is returned if any of these conditions are not met.

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

### -EndTime

Displays historical performance data for the specified time window, where `StartTime` is the beginning of the time window, and `EndTime` is the end of the time window. The `StartTime` and `EndTime` parameters are specified as DateTime. If `StartTime` is not specified, the start time will default to one resolution before the end time, meaning that the most recent sample of performance data will be displayed. If `EndTime`is not specified, the end time will default to the current time. Include the `Resolution` parameter to display the performance data at the specified resolution. If not specified, `Resolution` defaults to the lowest valid resolution.

```yaml
Type: DateTime
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

### -Id

Performs the operation on the unique resource IDs specified. Enter multiple resource IDs. The `Id` or `Name` parameter is required, but they cannot be set together.

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

### -Resolution

The number of milliseconds between samples of historical data. For array-wide performance metrics (`/arrays/performance` endpoint), valid values are `1000` (1 second), `30000` (30 seconds), `300000` (5 minutes), `1800000` (30 minutes), `7200000` (2 hours), `28800000` (8 hours), and `86400000` (24 hours). For performance metrics on storage objects (`<object name>/performance` endpoint), such as volumes, valid values are `30000` (30 seconds), `300000` (5 minutes), `1800000` (30 minutes), `7200000` (2 hours), `28800000` (8 hours), and `86400000` (24 hours). For space metrics, (`<object name>/space` endpoint), valid values are `300000` (5 minutes), `1800000` (30 minutes), `7200000` (2 hours), `28800000` (8 hours), and `86400000` (24 hours). Include the `StartTime` parameter to display the performance data starting at the specified start time. If `StartTime` is not specified, the start time will default to one resolution before the end time, meaning that the most recent sample of performance data will be displayed. Include the `EndTime` parameter to display the performance data until the specified end time. If `EndTime`is not specified, the end time will default to the current time. If the `Resolution` parameter is not specified but either the `StartTime` or `EndTime` parameter is, then `Resolution` will default to the lowest valid resolution.

```yaml
Type: Int64
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

### -StartTime

Displays historical performance data for the specified time window, where `StartTime` is the beginning of the time window, and `EndTime` is the end of the time window. The `StartTime` and `EndTime` parameters are specified as DateTime. If `StartTime` is not specified, the start time will default to one resolution before the end time, meaning that the most recent sample of performance data will be displayed. If `EndTime`is not specified, the end time will default to the current time. Include the `Resolution` parameter to display the performance data at the specified resolution. If not specified, `Resolution` defaults to the lowest valid resolution.

```yaml
Type: DateTime
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
