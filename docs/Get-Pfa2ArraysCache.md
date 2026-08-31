---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Get-Pfa2ArraysCache

## SYNOPSIS

(REST API 2.44+) List cached fleet array entries

## SYNTAX

```
Get-Pfa2ArraysCache [-Array <Rest2Api>] [-EndTime <DateTime>] [-Resolution <Int64>] [-StartTime <DateTime>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Displays the array entries this array holds in its fleet cache, including when each entry was last refreshed.

## EXAMPLES

### Example 1
```powershell
Get-Pfa2ArraysCache -Array $FlashArray
```

Lists all cached fleet array entries on the array.

### Example 2
```powershell
Get-Pfa2ArraysCache -Array $FlashArray -StartTime (Get-Date).AddHours(-24) -EndTime (Get-Date) -Resolution 30000
```

Returns cached fleet array entry samples for the last 24 hours at 30-second resolution. Omit -Resolution to let the array pick the coarsest resolution that covers the window.

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
