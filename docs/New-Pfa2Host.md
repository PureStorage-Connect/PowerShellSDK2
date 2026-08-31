---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2Host

## SYNOPSIS

(REST API 2.0+) Create a host and upsert tags

## SYNTAX

```
New-Pfa2Host [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-Name <String>]
 [-Iqn <List[String]>]
 [-Nqn <List[String]>] [-NvmeStretch <String>] [-Personality <String>]
 [-Vlan <String>] [-Wwn <List[String]>] [-ChapHostPassword <String>]
 [-ChapHostUser <String>] [-ChapTargetPassword <String>] [-ChapTargetUser <String>]
 [-PreferredArraysId <List[String]>]
 [-PreferredArraysName <List[String]>] [-QosBandwidthLimit <Int64>]
 [-QosIopsLimit <Int64>] [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a host for which the `Name` query parameter is required.

## EXAMPLES

### Example 1
```powershell
New-Pfa2Host -Array $FlashArray -Name 'esx-host-01'
```

Creates a host with no initiators yet.

### Example 2
```powershell
New-Pfa2Host -Array $FlashArray -Name 'esx-host-01' -Wwn '10:00:00:00:00:00:11:11', '10:00:00:00:00:00:12:12' -Personality 'esxi'
```

Creates a Fibre Channel host with two WWNs and the ESXi host personality.

### Example 3
```powershell
New-Pfa2Host -Array $FlashArray -Name 'esx-host-01' -Iqn 'iqn.1998-01.com.vmware:esx-host-01' -ChapHostUser 'esx-host-01' -ChapHostPassword 'HostSecret1234567'
```

Creates an iSCSI host and configures host CHAP. In earlier releases CHAP was passed as an object; it is now set with the individual -Chap* parameters.

### Example 4
```powershell
New-Pfa2Host -Array $FlashArray -Name 'esx-host-01' -Nqn 'nqn.2014-08.com.example:nvme:esx-host-01'
```

Creates an NVMe-oF host from its NQN.

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

### -ChapHostPassword

(REST API 2.3+) Challenge-Handshake Authentication Protocol (CHAP). Challenge-Handshake Authentication Protocol (CHAP).

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

### -ChapHostUser

(REST API 2.3+) Challenge-Handshake Authentication Protocol (CHAP). Challenge-Handshake Authentication Protocol (CHAP).

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

### -ChapTargetPassword

(REST API 2.3+) Challenge-Handshake Authentication Protocol (CHAP). Challenge-Handshake Authentication Protocol (CHAP).

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

### -ChapTargetUser

(REST API 2.3+) Challenge-Handshake Authentication Protocol (CHAP). Challenge-Handshake Authentication Protocol (CHAP).

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

### -Iqn

The iSCSI qualified name (IQN) associated with the host.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: Iqns

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

### -Nqn

The NVMe Qualified Name (NQN) associated with the host.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: Nqns

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NvmeStretch

Set to `$True` to allow the host to use NVMe over Fabrics across a stretched pod, so its volumes stay available from either array.

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

### -Personality

Determines how the system tunes the array to ensure that it works optimally with the host. Set `Personality` to the name of the host operating system or virtual memory system. Valid values are `aix`, `esxi`, `hitachi-vsp`, `hpux`, `oracle-vm-server`, `solaris`, and `vms`. If your system is not listed as one of the valid host personalities, do not set the option. By default, the personality is not set.

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

### -PreferredArraysId

(REST API 2.3+) A globally unique, system-generated ID. The ID cannot be modified.

reference: Reference

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

### -PreferredArraysName

(REST API 2.3+) The resource name, such as volume name, pod name, snapshot name, and so on.

reference: Reference

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

### -QosBandwidthLimit

(REST API 2.3+) The maximum QoS bandwidth limit for the volume. Whenever throughput exceeds the bandwidth limit, throttling occurs. Measured in bytes per second. Maximum limit is 512 GB/s.

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

### -QosIopsLimit

(REST API 2.3+) The QoS IOPs limit for the volume.

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

### -TagKey

Key of the tag. Supports up to 64 Unicode characters.

reference: NonCopyableTag

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: TagsKey

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TagNamespace

Optional namespace of the tag. Namespace identifies the category of the tag. Omitting the namespace defaults to the namespace `default`. The `pure*` namespaces are reserved for plugins and integration partners. It is recommended that customers avoid using reserved namespaces.

reference: NonCopyableTag

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: TagsNamespace

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TagValue

Value of the tag. Supports up to 256 Unicode characters.

reference: NonCopyableTag

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: TagsValue

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Vlan

The VLAN ID that the host is associated with. If not set or set to `any`, the host can access any VLAN. If set to `untagged`, the host can only access untagged VLANs. If set to a number between `1` and `4094`, the host can only access the specified VLAN with that number.

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

### -Wwn

The Fibre Channel World Wide Name (WWN) associated with the host.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: Wwns

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

[Get-Pfa2Host](Get-Pfa2Host.md)

[Remove-Pfa2Host](Remove-Pfa2Host.md)

[Update-Pfa2Host](Update-Pfa2Host.md)
