---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2Dns

## SYNOPSIS

(REST API 2.15+) Create DNS configuration

## SYNTAX

```
New-Pfa2Dns [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-Name <String>] [-Domain <String>]
 [-NameServer <List[String]>]
 [-Service <List[String]>] [-CaCertificateId <String>]
 [-CaCertificateName <String>] [-CaCertificateResourceType <String>] [-CaCertificateGroupId <String>]
 [-CaCertificateGroupName <String>] [-CaCertificateGroupResourceType <String>] [-SourceName <String>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates new DNS configuration with parameters including the domain suffix, the list of DNS name server IP addresses, and the list of services that DNS parameters apply to.

## EXAMPLES

### Example 1
```powershell
New-Pfa2Dns -Array $FlashArray -Name 'management'
```

Creates a DNS configuration named 'management'.

### Example 2
```powershell
New-Pfa2Dns -Array $FlashArray -Name 'management' -Domain 'example.com' -NameServer '10.0.0.10', '10.0.0.11'
```

Creates a DNS configuration and sets -Domain and -NameServer in the same call.

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

### -CaCertificateGroupId

A reference to the `certificate group` to use for validating nameservers with HTTPS connections. This property is mutually exclusive with `ca_certificate` property and may only be configured when nameservers begin with HTTPS.

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

### -CaCertificateGroupName

A reference to the `certificate group` to use for validating nameservers with HTTPS connections. This property is mutually exclusive with `ca_certificate` property and may only be configured when nameservers begin with HTTPS.

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

### -CaCertificateGroupResourceType

A reference to the `certificate group` to use for validating nameservers with HTTPS connections. This property is mutually exclusive with `ca_certificate` property and may only be configured when nameservers begin with HTTPS.  A reference to the `certificate group` to use for validating nameservers with HTTPS connections. This property is mutually exclusive with `ca_certificate` property and may only be configured when nameservers begin with HTTPS.

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

### -CaCertificateId

A reference to the `certificate` to use for validating nameservers with HTTPS connections. This property is mutually exclusive with `ca_certificate_group` property and may only be configured when nameservers begin with HTTPS.

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

### -CaCertificateName

A reference to the `certificate` to use for validating nameservers with HTTPS connections. This property is mutually exclusive with `ca_certificate_group` property and may only be configured when nameservers begin with HTTPS.

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

### -CaCertificateResourceType

A reference to the `certificate` to use for validating nameservers with HTTPS connections. This property is mutually exclusive with `ca_certificate_group` property and may only be configured when nameservers begin with HTTPS.  A reference to the `certificate` to use for validating nameservers with HTTPS connections. This property is mutually exclusive with `ca_certificate_group` property and may only be configured when nameservers begin with HTTPS.

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

### -Domain

The domain suffix to be appended by the appliance when performing DNS lookups.

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

Performs the operation on the unique name specified. Enter multiple names. The name is expected to be fully qualified, meaning if the object is contained in some context, the corresponding name would provide complete information about the containment hierarchy. For example, `name01,pod01::name01`.

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

### -NameServer

The list of DNS servers either in the form of IP addresses or HTTPS endpoints. Domain names in HTTPS endpoints are not supported. IP addresses must be used instead. If nameservers begin with `https://`, then DNS queries will be performed over HTTPS. Otherwise, unencrypted DNS queries will be performed. Using a combination of nameservers that begin with `https://` and that do not begin with `https://` is not supported. If servers are specified with `https://` one of `ca_certificate` and `ca_certificate_group` parameters must be set.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: Nameservers

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Service

The list of services utilizing the DNS configuration.

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

### -SourceName

The network interface used for communication with the DNS server.

```yaml
Type: String
Parameter Sets: (All)
Aliases: SourceNames

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

[Get-Pfa2Dns](Get-Pfa2Dns.md)

[Remove-Pfa2Dns](Remove-Pfa2Dns.md)

[Update-Pfa2Dns](Update-Pfa2Dns.md)
