---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2NetworkInterface

## SYNOPSIS

(REST API 2.4+) Modify network interface

## SYNTAX

```
Update-Pfa2NetworkInterface [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-Name <String>] [-Enabled <Boolean>]
 [-OverrideNpivCheck <Boolean>] [-Service <List[String]>]
 [-AttachedServerId <List[String]>]
 [-AttachedServerName <List[String]>] [-EthAddress <String>]
 [-EthGateway <String>] [-EthMtu <Int32>] [-EthNetmask <String>]
 [-EthAddSubinterfaceName <List[String]>]
 [-EthRemoveSubinterfaceName <List[String]>]
 [-EthSubinterfaceName <List[String]>] [-EthSubnetName <String>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies a network interface on a controller.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2NetworkInterface -Array $FlashArray -Name 'ct0.eth4' -Enabled $true
```

Sets -Enabled on the network interface named 'ct0.eth4'.

### Example 2
```powershell
Update-Pfa2NetworkInterface -Array $FlashArray -Name 'ct0.eth4' -OverrideNpivCheck $true
```

Sets -OverrideNpivCheck on the network interface named 'ct0.eth4'.

### Example 3
```powershell
Update-Pfa2NetworkInterface -Array $FlashArray -Name 'ct0.eth4' -Service 'management'
```

Sets -Service on the network interface named 'ct0.eth4'.

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

### -AttachedServerId

A globally unique, system-generated ID. The ID cannot be modified.

reference: Reference

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: AttachedServersId

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AttachedServerName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: Reference

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: AttachedServersName

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

### -Enabled

Returns a value of `$True` if the specified network interface or Fibre Channel port is enabled. Returns a value of `$False` if the specified network interface or Fibre Channel port is disabled.

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

### -EthAddress

Ethernet network interface properties. Ethernet network interface properties.

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

### -EthAddSubinterfaceName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: ReferenceNoId

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: EthAddSubinterfacesName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EthGateway

Ethernet network interface properties. Ethernet network interface properties.

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

### -EthMtu

Ethernet network interface properties. Ethernet network interface properties.

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

### -EthNetmask

Ethernet network interface properties. Ethernet network interface properties.

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

### -EthRemoveSubinterfaceName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: ReferenceNoId

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: EthRemoveSubinterfacesName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EthSubinterfaceName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: ReferenceNoId

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: EthSubinterfacesNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EthSubnetName

Ethernet network interface properties. Ethernet network interface properties.

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

### -OverrideNpivCheck

N-Port ID Virtualization (NPIV) requires a balanced configuration of Fibre Channel ports configured for SCSI on both controllers. Enabling or Disabling a Fibre Channel port configured for SCSI might cause the NPIV status to change from enabled to disabled or vice versa. Set this option to proceed with enabling or disabling the port.

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

### -Service

The services provided by the specified network interface or Fibre Channel port.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: Services

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

[Get-Pfa2NetworkInterface](Get-Pfa2NetworkInterface.md)

[New-Pfa2NetworkInterface](New-Pfa2NetworkInterface.md)

[Remove-Pfa2NetworkInterface](Remove-Pfa2NetworkInterface.md)
