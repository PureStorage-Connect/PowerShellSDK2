---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2Certificate

## SYNOPSIS

(REST API 2.4+) Create certificate

## SYNTAX

```
New-Pfa2Certificate [-Array <Rest2Api>] [-XRequestID <String>] [-Name <String>] [-Certificate <String>]
 [-CommonName <String>] [-Country <String>] [-Email <String>] [-IntermediateCertificate <String>]
 [-KeyAlgorithm <String>] [-KeySize <Int32>] [-Locality <String>] [-Organization <String>]
 [-OrganizationalUnit <String>] [-State <String>]
 [-SubjectAlternativeNames <List[String]>] [-Days <Int32>] [-Key <String>]
 [-Passphrase <String>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a certificate object and specifies the valid time period and organization details of the certificate. A certificate can be imported or manually configured.

## EXAMPLES

### Example 1
```powershell
New-Pfa2Certificate -Array $FlashArray -Name 'management'
```

Creates a certificate named 'management'.

### Example 2
```powershell
New-Pfa2Certificate -Array $FlashArray -Name 'management' -Certificate $CertificatePem -CommonName 'flasharray-01.example.com'
```

Creates a certificate and sets -Certificate and -CommonName in the same call.

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

### -Certificate

The text of the certificate.

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

### -CommonName

The common name field listed in the certificate.

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

### -Country

Two-letter country (ISO) code listed in the certificate.

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

### -Days

The number of days that the self-signed certificate is valid. Defaults to 3650. This field can only be specified when creating a new self-signed certificate.

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

### -Email

The email field listed in the certificate.

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

### -IntermediateCertificate

The text of the intermediate certificate chains.

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

### -Key

The text of the private key. This field can only be specified when importing a certificate and key pair.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Keys

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeyAlgorithm

The key algorithm used to generate the certificate. This field can only be specified when creating a new self-signed certificate. Defaults to rsa if not specified. Valid values when creating a new self-signed certificate only include `rsa`, `ec`, `ed448` and `ed25519`.

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

### -KeySize

The size (in bits) of the private key for the certificate. Default is 2048 bits for `rsa` key_algorithm, 256 for `ec` and `ed25519`. The `ed448` default key size is 456. This field can only be specified when creating a new self-signed certificate.

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

### -Locality

The locality field listed in the certificate.

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

### -Organization

The organization field listed in the certificate.

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

### -OrganizationalUnit

The organizational unit field listed in the certificate.

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

### -Passphrase

The passphrase used to encrypt `Key`. This field can only be specified when importing a certificate and key pair.

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

### -State

The state/province field listed in the certificate.

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

### -SubjectAlternativeNames

The alternative names that are secured by this certificate. Alternative names may be IP addresses, DNS names, or URIs.

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

[Get-Pfa2Certificate](Get-Pfa2Certificate.md)

[Remove-Pfa2Certificate](Remove-Pfa2Certificate.md)

[Update-Pfa2Certificate](Update-Pfa2Certificate.md)
