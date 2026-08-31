---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2ArrayConnection

## SYNOPSIS

(REST API 2.4+) Modify an array connection

## SYNTAX

```
Update-Pfa2ArrayConnection [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>] [-Refresh <Boolean>]
 [-RenewEncryptionKey <Boolean>] [-DefaultLimit <Int64>] [-WindowLimit <Int64>] [-ConnectionKey <String>]
 [-Encryption <String>] [-ManagementAddress <String>]
 [-ReplicationAddress <List[String]>] [-Type <String>] [-WindowEnd <Int64>]
 [-WindowStart <Int64>] [-ThrottleDefaultLimit <Int64>] [-ThrottleWindowLimit <Int64>]
 [-ThrottleWindowEnd <Int64>] [-ThrottleWindowStart <Int64>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies attributes for an array connection.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2ArrayConnection -Array $FlashArray -Name 'array2' -Refresh $true
```

Sets -Refresh on the array connection named 'array2'.

### Example 2
```powershell
Update-Pfa2ArrayConnection -Array $FlashArray -Name 'array2' -RenewEncryptionKey $true
```

Sets -RenewEncryptionKey on the array connection named 'array2'.

### Example 3
```powershell
Update-Pfa2ArrayConnection -Array $FlashArray -Name 'array2' -DefaultLimit 1
```

Sets -DefaultLimit on the array connection named 'array2'.

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

### -ConnectionKey

The connection key of the target array. It is required when `Encryption` is changed, or when `Type` is changed from `async-replication` to `sync-replication`.

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

### -DefaultLimit

Deprecated. Default maximum bandwidth threshold for outbound traffic in bytes. Once exceeded, bandwidth throttling occurs.

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

### -Encryption

If `encrypted`, encryption will be enabled for all traffic over this array connection. If `unencrypted`, encryption will be disabled for all traffic over this array connection. `ConnectionKey` must be specified when encryption is changed. If not specified, the current encryption option for the array connection will remain unchanged.

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

### -ManagementAddress

Management IP address of the target array.

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

### -Refresh

If set to `$True`, the array will attempt to communicate with the connection peer in order to update the connection attributes on both arrays with any changes that have occurred. If set to `$True`, other array connection attributes may not be modified in requests. Default value is `$False`.

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

### -RenewEncryptionKey

If set to `$True`, update array connection with a new encryption key. If set to `$True`, other array connection attributes may not be modified in requests. Defaults to `$False`.

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

### -ReplicationAddress

IP addresses and FQDNs of the target arrays. Configurable only when `replication_transport` is set to `ip`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ReplicationAddresses

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ThrottleDefaultLimit

The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.  The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.

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

### -ThrottleWindowEnd

The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.  The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.  The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.  The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.

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

### -ThrottleWindowLimit

The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.  The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.

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

### -ThrottleWindowStart

The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.  The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.  The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.  The bandwidth throttling for an array connection. Configurable on Update-Pfa2ArrayConnection only.

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

### -Type

The type of replication. Valid values are `async-replication` and `sync-replication`.

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

### -WindowEnd

The window end time. Measured in milliseconds since midnight. The time must be set on the hour. (e.g., `28800000`, which is equal to 8:00 AM).

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

### -WindowLimit

Deprecated. Maximum bandwidth threshold for outbound traffic during the specified `WindowLimit` time range in bytes. Once exceeded, bandwidth throttling occurs.

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

### -WindowStart

The window start time. Measured in milliseconds since midnight. The time must be set on the hour. (e.g., `18000000`, which is equal to 5:00 AM).

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

[Get-Pfa2ArrayConnection](Get-Pfa2ArrayConnection.md)

[New-Pfa2ArrayConnection](New-Pfa2ArrayConnection.md)

[Remove-Pfa2ArrayConnection](Remove-Pfa2ArrayConnection.md)
