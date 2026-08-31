---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2HostGroup

## SYNOPSIS

(REST API 2.0+) Modify a host group

## SYNTAX

```
Update-Pfa2HostGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-FromMemberId <List[String]>]
 [-FromMemberNames <List[String]>] [-ModifyResourceAccess <String>]
 [-Name <String>] [-ToMemberId <List[String]>]
 [-ToMemberName <List[String]>] [-HostGroupName <String>]
 [-QosBandwidthLimit <Int64>] [-QosIopsLimit <Int64>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies a host group in which the `Name` query parameter is required.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2HostGroup -Array $FlashArray -Name $HostGroupName -HostGroupName $NewHostGroupName
```

Find a host group named $HostGroupName and update it with a new name $NewHostGroupName.

### Example 2
```powershell
Update-Pfa2HostGroup -Array $FlashArray -Name 'esx-cluster-01' -QosBandwidthLimit 512MB
```

Sets -QosBandwidthLimit on the host group named 'esx-cluster-01'.

### Example 3
```powershell
Update-Pfa2HostGroup -Array $FlashArray -Name 'esx-cluster-01' -QosIopsLimit 10000
```

Sets -QosIopsLimit on the host group named 'esx-cluster-01'.

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

The new name for the resource.

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

[Get-Pfa2HostGroup](Get-Pfa2HostGroup.md)

[New-Pfa2HostGroup](New-Pfa2HostGroup.md)

[Remove-Pfa2HostGroup](Remove-Pfa2HostGroup.md)
