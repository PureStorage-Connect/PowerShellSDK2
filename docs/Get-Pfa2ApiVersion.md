---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Get-Pfa2ApiVersion

## SYNOPSIS

List array supported API information and PowerShell supported API information

## SYNTAX

```
Get-Pfa2ApiVersion -Endpoint <String> [-IgnoreCertificateError]
 [<CommonParameters>]
```

## DESCRIPTION

Displays array supported API information and PowerShell supported API information

## EXAMPLES

### Example 1
```powershell
Get-Pfa2ApiVersion -Endpoint 'flasharray-01.example.com' -IgnoreCertificateError
```

Lists the REST API versions the array supports. This runs before authentication, so it needs only the endpoint.

### Example 2
```powershell
(Get-Pfa2ApiVersion -Endpoint 'flasharray-01.example.com' -IgnoreCertificateError).Version | Select-Object -Last 1
```

Returns the highest REST API version the array supports, which is useful for choosing a value for the -ApiVersion parameter of Connect-Pfa2Array.

### Example 3
```powershell
Get-Pfa2ApiVersion
```

Lists all API versions on the array.

## PARAMETERS

### -Endpoint

The FlashArray name or IP address

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IgnoreCertificateError

Prevents certificate errors such as an unknown certificate issuer or non-matching names from causing the request to fail.

```yaml
Type: SwitchParameter
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

### PureStorage.Rest.PureApiClientAuthInfo

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)
