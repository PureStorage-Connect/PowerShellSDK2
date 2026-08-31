---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2Realm

## SYNOPSIS

Modify realms

## SYNTAX

```
Update-Pfa2Realm [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-DestroyContents <Boolean>]
 [-Id <List[String]>] [-IgnoreUsage <Boolean>] [-Name <String>]
 [-RealmName <String>] [-Destroyed <Boolean>] [-QuotaLimit <Int64>] [-QosBandwidthLimit <Int64>]
 [-QosIopsLimit <Int64>] [-QosBandwidthFloor <Int64>] [-QosIopsFloor <Int64>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies realm details.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2Realm -Array $FlashArray -Name 'tenant-a' -RealmName 'tenant-a-renamed'
```

Renames the realm 'tenant-a' to 'tenant-a-renamed'.

### Example 2
```powershell
Update-Pfa2Realm -Array $FlashArray -Name 'tenant-a' -QosBandwidthLimit 512MB
```

Sets -QosBandwidthLimit on the realm named 'tenant-a'.

### Example 3
```powershell
Update-Pfa2Realm -Array $FlashArray -Name 'tenant-a' -QosIopsLimit 10000
```

Sets -QosIopsLimit on the realm named 'tenant-a'.

### Example 4
```powershell
Update-Pfa2Realm -Array $FlashArray -Name 'tenant-a' -Destroyed $true
```

Destroys the realm named 'tenant-a'. The object enters the eradication pending state and can be recovered with `-Destroyed $false` until that period expires.

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

### -DestroyContents

Set to `$True` to destroy contents (e.g., volumes, protection groups, snapshots) and containers (e.g., realms, pods, volume groups), including eradicating containers with content.

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

### -Destroyed

If set to `$True`, the realm will be destroyed and pending eradication. The `TimeRemaining` value displays the amount of time left until the destroyed realm is permanently eradicated. A realm can only be destroyed if it is empty or destroy_contents is set to $True. Before the `TimeRemaining` period has elapsed, the destroyed realm can be recovered by setting `Destroyed=$False`. Once the `TimeRemaining` period has elapsed, the realm is permanently eradicated and can no longer be recovered.

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

### -IgnoreUsage

Set to `$True` to set a `QuotaLimit` that is lower than the existing usage. This ensures that no new volumes can be created until the existing usage drops below the `QuotaLimit`. If not specified, defaults to `$False`.

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

### -QosBandwidthFloor

Sets QoS limits.  Sets QoS limits.

minimum: 1048576

maximum: 549755813888

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

### -QosBandwidthLimit

Sets QoS limits.  Sets QoS limits.

minimum: 1048576

maximum: 549755813888

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

### -QosIopsFloor

Sets QoS limits.  Sets QoS limits.

minimum: 100

maximum: 100000000

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

### -QosIopsLimit

Sets QoS limits.  Sets QoS limits.

minimum: 100

maximum: 100000000

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

### -QuotaLimit

The logical quota limit of the realm, measured in bytes.

minimum: 1048576

maximum: 4503599627370496

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

### -RealmName

The new name for the resource.

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

[Get-Pfa2Realm](Get-Pfa2Realm.md)

[New-Pfa2Realm](New-Pfa2Realm.md)

[Remove-Pfa2Realm](Remove-Pfa2Realm.md)
