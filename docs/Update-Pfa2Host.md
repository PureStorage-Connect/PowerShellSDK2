---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2Host

## SYNOPSIS

(REST API 2.0+) Modify a host

## SYNTAX

```
Update-Pfa2Host [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-FromMemberId <List[String]>]
 [-FromMemberNames <List[String]>] [-ModifyResourceAccess <String>]
 [-Name <String>] [-ToMemberId <List[String]>]
 [-ToMemberName <List[String]>] [-HostName <String>]
 [-AddIqn <List[String]>]
 [-AddNqn <List[String]>]
 [-AddWwn <List[String]>]
 [-Iqn <List[String]>]
 [-Nqn <List[String]>] [-NvmeStretch <String>] [-Personality <String>]
 [-RemoveIqn <List[String]>]
 [-RemoveNqn <List[String]>]
 [-RemoveWwn <List[String]>] [-Vlan <String>]
 [-Wwn <List[String]>] [-ChapHostPassword <String>]
 [-ChapHostUser <String>] [-ChapTargetPassword <String>] [-ChapTargetUser <String>] [-HostGroupName <String>]
 [-PreferredArraysId <List[String]>]
 [-PreferredArraysName <List[String]>] [-QosBandwidthLimit <Int64>]
 [-QosIopsLimit <Int64>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies an existing host, including its storage network addresses, CHAP, host personality, and preferred arrays, or associate a host to a host group. The `Name` query parameter is required.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2Host -Array $FlashArray -Name 'esx-host-01' -AddWwn '10:00:00:00:00:00:13:13'
```

Adds a WWN to an existing host without disturbing the WWNs already on it. -Wwn replaces the whole list instead.

### Example 2
```powershell
Update-Pfa2Host -Array $FlashArray -Name 'esx-host-01' -HostGroupName 'esx-cluster-01'
```

Moves the host into a host group.

### Example 3
```powershell
Update-Pfa2Host -Array $FlashArray -Name 'esx-host-01' -ChapHostUser 'esx-host-01' -ChapHostPassword 'HostSecret1234567' -ChapTargetUser 'flasharray-01' -ChapTargetPassword 'ArraySecret1234567'
```

Configures bidirectional CHAP on the host.

### Example 4
```powershell
Update-Pfa2Host -Array $FlashArray -Name 'esx-host-01' -QosBandwidthLimit 512MB -QosIopsLimit 10000
```

Applies bandwidth and IOPS limits to every volume connected to the host.

## PARAMETERS

### -AddIqn

Adds the specified iSCSI Qualified Names (IQNs) to those already associated with the specified host.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: AddIqns

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AddNqn

Adds the specified NVMe Qualified Names (NQNs) to those already associated with the specified host.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: AddNqns

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AddWwn

Adds the specified Fibre Channel World Wide Names (WWNs) to those already associated with the specified host.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: AddWwns

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

### -FromMemberId

Move the resource from the specified local member realm or array. This should be a union of all local realms and arrays from which the resource should be removed. Enter multiple IDs in a comma-separated format.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: FromMemberIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FromMemberNames

Move the resource from the specified local member realm or array. This should be a union of all local realms and arrays to be removed from the specified resource. Enter multiple names in a comma-separated format.

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

### -HostGroupName

The host group to which the host should be associated.

```yaml
Type: String
Parameter Sets: (All)
Aliases: HostGroupNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -HostName

The new name for the resource.

```yaml
Type: String
Parameter Sets: (All)
Aliases: HostNames

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

### -ModifyResourceAccess

Describes how to modify a resource accesses of a resource when that resource is moved. Possible values are: `none`, `create`, and `delete`. The `none` value indicates that no resource access should be modified. The `create` value is used when a resource is moving out of a realm into the array and it needs to create a resource access of the moved resource to the realm from which it is moving. The `delete` value is used when a resource that is moving from an array into a realm already has a resource access into that realm. This is a required parameter when a resource is being moved to another member.

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

### -RemoveIqn

Disassociates the specified iSCSI Qualified Names (IQNs) from the specified host.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemoveIqns

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoveNqn

Disassociates the specified NVMe Qualified Names (NQNs) from the specified host.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemoveNqns

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoveWwn

Disassociates the specified Fibre Channel World Wide Names (WWNs) from the specified host.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemoveWwns

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToMemberId

The resource will be moved to the specified local member realm or array. Enter multiple IDs in a comma-separated format.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ToMemberIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToMemberName

The resource will be moved to the specified local member realm or array. Enter multiple names in a comma-separated format.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ToMemberNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Vlan

The VLAN ID that the host is associated with. If not set, there is no change in VLAN. If set to `any`, the host can access any VLAN. If set to `untagged`, the host can only access untagged VLANs. If set to a number between `1` and `4094`, the host can only access the specified VLAN with that number.

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

[New-Pfa2Host](New-Pfa2Host.md)

[Remove-Pfa2Host](Remove-Pfa2Host.md)
