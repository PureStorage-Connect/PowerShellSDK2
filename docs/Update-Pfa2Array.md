---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2Array

## SYNOPSIS

(REST API 2.2+) Modify an array

## SYNTAX

```
Update-Pfa2Array [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-ArrayName <String>] [-Banner <String>]
 [-ConsoleLockEnabled <Boolean>] [-IdleTimeout <Int32>]
 [-NtpServer <List[String]>] [-NtpSymmetricKey <String>]
 [-ScsiTimeout <Int32>] [-EradicationConfigDisabledDelay <Int64>] [-EradicationConfigEnabledDelay <Int64>]
 [-EradicationDelay <Int64>] [-NetworkAccessPolicyId <String>] [-NetworkAccessPolicyName <String>]
 [-NetworkAccessPolicyResourceType <String>] [-ApiVersion <String>]
 [<CommonParameters>]
```

## DESCRIPTION

Modifies general array properties such as the array name, login banner, idle timeout for management sessions, and NTP servers.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2Array -Array $FlashArray -IdleTimeout $DisableIdleTimeout
```

Update FlashArray with a new idletimeout.

### Example 2
```powershell
Update-Pfa2Array -Array $FlashArray -ScsiTimeout $MinIdleTimeout
```

Update FlashArray with a new ScsiTimeout.

### Example 3
```powershell
Update-Pfa2Array -Array $FlashArray -Banner 'flasharray-01'
```

Sets -Banner on the array.

### Example 4
```powershell
Update-Pfa2Array -Array $FlashArray -ConsoleLockEnabled $true
```

Sets -ConsoleLockEnabled on the array.

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

### -ArrayName

A user-specified name. The name must be locally unique and can be changed.

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

### -Banner

Sets text that Purity users see in the GUI at login, and in the CLI just before the password prompt.

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

### -ConsoleLockEnabled

Enables or disables root user login at the physical (serial or VGA) console.

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

### -EradicationConfigDisabledDelay

The configuration of eradication feature. The configuration of eradication feature.

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

### -EradicationConfigEnabledDelay

The configuration of eradication feature. The configuration of eradication feature.

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

### -EradicationDelay

(REST API 2.6+) The configuration of eradication feature. The configuration of eradication feature.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases: EradicationConfigEradicationDelay

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdleTimeout

The idle timeout in milliseconds. Valid values include `0` and any multiple of `60000` in the range of `300000` and `10800000`. Any other values are rounded down to the nearest multiple of `60000`.

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

### -NetworkAccessPolicyId

The ID of the network access policy to apply. The `NetworkAccessPolicyId` or `NetworkAccessPolicyName` parameter can be used, but not both.

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

### -NetworkAccessPolicyName

The name of the network access policy to apply. The `NetworkAccessPolicyId` or `NetworkAccessPolicyName` parameter can be used, but not both.

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

### -NetworkAccessPolicyResourceType

The resource type of the referenced network access policy. Set this when a name could refer to more than one type of resource.

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

### -NtpServer

NTP Servers. If the user does not have sufficient access, this field will return `null`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: NtpServers

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NtpSymmetricKey

The text of ntp symmetric authentication key. Supported formats include a hex-encoded string no longer than 64 characters, or an ASCII string no longer than 20 characters, excluding "#". Any configured key will be masked as " * *" on return. If the user does not have sufficient access, this field will return `null`.

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

### -ScsiTimeout

The SCSI timeout. If not specified, defaults to `60s`. If the user does not have sufficient access, this field will return `null`.

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

[Connect-Pfa2Array](Connect-Pfa2Array.md)

[Disconnect-Pfa2Array](Disconnect-Pfa2Array.md)

[Get-Pfa2Array](Get-Pfa2Array.md)

[Remove-Pfa2Array](Remove-Pfa2Array.md)
