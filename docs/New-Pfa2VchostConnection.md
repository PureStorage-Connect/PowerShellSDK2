---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2VchostConnection

## SYNOPSIS

Create a vchost-connection between protocol endpoint and vchost.

## SYNTAX

```
New-Pfa2VchostConnection [-Array <Rest2Api>] [-XRequestID <String>] [-AllVchosts <Boolean>]
 [-AllowStretchedMultiVchost <Boolean>]
 [-ProtocolEndpointId <List[String]>]
 [-ProtocolEndpointName <List[String]>]
 [-VchostId <List[String]>]
 [-VchostName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a vchost-connection between protocol endpoint and vchost. Each vchost is associated with a vCenter. Each protocol endpoint is associated with a storage container. A vchost-connection makes the storage container accessible to the vCenter when the vCenter attempts to mount the container. One of `ProtocolEndpointName` or `ProtocolEndpointId` query parameters and one of `VchostName` or `VchostId` query parameters are required. But if `AllVchosts` is set to `$True`, `VchostName` and `VchostId` should not be specified.

## EXAMPLES

### Example 1
```powershell
New-Pfa2VchostConnection -Array $FlashArray -AllVchosts $true -ProtocolEndpointName 'pe-01' -VchostName 'vchost-01'
```

Creates a vchost connection on the array.

### Example 2
```powershell
New-Pfa2VchostConnection -Array $FlashArray -AllVchosts $true
```

Creates a vchost connection specifying only -AllVchosts.

## PARAMETERS

### -AllowStretchedMultiVchost

If set to `$True`, users are allowed to create a new vchost-connection to a stretched container that already has a vchost-connection. In principle, a stretched container can only have one vchost-connection at a time.

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

### -AllVchosts

If set to `$True`, the storage container represented by the protocol endpoint is accessible to all vchosts. Users should not specify `VchostId` or `VchostName` in the request. If set to `$False`, the storage container represented by the protocol endpoint is only accessible to the vchosts that have explicit vchost-connections with the protocol endpoint. Users need to specify `VchostId` or `VchostName` in the request.

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

### -ProtocolEndpointId

A list of protocol endpoint IDs. Performs the operation on the protocol endpoints specified. For example, `peid01,peid02`. Cannot be used in conjunction with `ProtocolEndpointName`. If the list contains more than one value, then `VchostId` or `VchostName` must have exactly one value.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ProtocolEndpointIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtocolEndpointName

A list of protocol endpoint names. Performs the operation on the protocol endpoints specified. For example, `pe01,pe02`. Cannot be used in conjunction with `ProtocolEndpointId`. If the list contains more than one value, then `VchostId` or `VchostName` must have exactly one value.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ProtocolEndpointNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VchostId

A list of vchost IDs. Performs the operation on the vchosts specified. For example, `vchostid01,vchostid02`. Cannot be used in conjunction with `VchostName`. If the list contains more than one value, then `ProtocolEndpointId` or `ProtocolEndpointName` must have exactly one value.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: VchostIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VchostName

A list of vchost names. Performs the operation on the vchosts specified. For example, `vchost01,vchost02`. Cannot be used in conjunction with `VchostId`. If the list contains more than one value, then `ProtocolEndpointId` or `ProtocolEndpointName` must have exactly one value.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: VchostNames

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

[Get-Pfa2VchostConnection](Get-Pfa2VchostConnection.md)

[Remove-Pfa2VchostConnection](Remove-Pfa2VchostConnection.md)
