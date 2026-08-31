---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2Connection

## SYNOPSIS

(REST API 2.0+) Create a connection between a volume and host or host group

## SYNTAX

```
New-Pfa2Connection [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-HostGroupName <List[String]>]
 [-HostName <List[String]>]
 [-VolumeId <List[String]>]
 [-VolumeName <List[String]>] [-Lun <Int32>] [-ProtocolEndpointId <String>]
 [-ProtocolEndpointName <String>] [-ApiVersion <String>]
 [<CommonParameters>]
```

## DESCRIPTION

Creates a connection between a volume and a host or host group. One of `VolumeName` or `VolumeId` and one of `HostName` or `HostGroupName` query parameters are required.

## EXAMPLES

### Example 1
```powershell
New-Pfa2Connection -Array $FlashArray -VolumeName 'db-vol-01' -HostName 'esx-host-01'
```

Connects a volume to a host, letting the array choose the LUN.

### Example 2
```powershell
New-Pfa2Connection -Array $FlashArray -VolumeName 'db-vol-01' -HostGroupName 'esx-cluster-01'
```

Connects a volume to every host in a host group, which is the usual pattern for a clustered application.

### Example 3
```powershell
New-Pfa2Connection -Array $FlashArray -VolumeName 'db-vol-01' -HostName 'esx-host-01' -Lun 10
```

Connects a volume at a specific LUN number.

### Example 4
```powershell
New-Pfa2Connection -Array $FlashArray -HostGroupName 'esx-cluster-01' -HostName 'esx-host-01' -VolumeName 'db-vol-01'
```

Creates a volume-to-host connection on the array.

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

### -Lun

The logical unit number (LUN) by which the specified hosts are to address the specified volume. If the LUN is not specified, the system automatically assigns a LUN to the connection. To automatically assign a LUN to a private connection, the system starts at LUN `1` and counts up to the maximum LUN `4095`, assigning the first available LUN to the connection. For shared connections, the system starts at LUN `254` and counts down to the minimum LUN `1`, assigning the first available LUN to the connection. If all LUNs in the `[1...254]` range are taken, the system starts at LUN `255` and counts up to the maximum LUN `4095`, assigning the first available LUN to the connection. Should not be used together with an NVMe host or host group.

minimum: 1

maximum: 4095

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

(REST API 2.3+) A protocol endpoint (also known as a conglomerate volume) which acts as a proxy through which virtual volumes are created and then connected to VMware ESXi hosts or host groups. The protocol endpoint itself does not serve I/Os; instead, its job is to form connections between FlashArray volumes and ESXi hosts and host groups.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ProtocolEndpointIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtocolEndpointName

(REST API 2.3+) A protocol endpoint (also known as a conglomerate volume) which acts as a proxy through which virtual volumes are created and then connected to VMware ESXi hosts or host groups. The protocol endpoint itself does not serve I/Os; instead, its job is to form connections between FlashArray volumes and ESXi hosts and host groups.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ProtocolEndpointNames

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

[Remove-Pfa2Connection](Remove-Pfa2Connection.md)
