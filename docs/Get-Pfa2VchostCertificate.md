---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Get-Pfa2VchostCertificate

## SYNOPSIS

List vchost certificates

## SYNTAX

```
Get-Pfa2VchostCertificate [-Array <Rest2Api>] [-XRequestID <String>]
 [-CertificateName <List[String]>] [-Filter <String>]
 [-Id <List[String]>] [-Limit <Int32>] [-Offset <Int32>]
 [-Sort <List[String]>]
 [-VchostId <List[String]>]
 [-VchostName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Displays certificates that are attached to configured vchosts on at least one endpoint.

## EXAMPLES

### Example 1
```powershell
Get-Pfa2VchostCertificate -Array $FlashArray
```

Lists all vchost certificates on the array.

### Example 2
```powershell
Get-Pfa2VchostCertificate -Array $FlashArray -Filter "name='vchost*'"
```

Returns only the vchost certificates matching a server-side filter expression. For the filter syntax, run `Help about_Pfa2Filtering`.

### Example 3
```powershell
Get-Pfa2VchostCertificate -Array $FlashArray -Limit 25 -Sort 'name-'
```

Returns the first 25 vchost certificates sorted by name in descending order. Append `-` to a field name to reverse the sort.

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

### -CertificateName

The names of one or more certificates. Enter multiple names. For example, `cert01,cert02`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: CertificateNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Filter

Narrows down the results to only the response objects that satisfy the filter criteria. For more information of filtering, run `Help About_Pfa2Filtering`

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

### -Id

Performs the operation on the unique resource IDs specified. Enter multiple resource IDs. The `Id` or `names` parameter is required, but they cannot be set together.

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

### -Limit

Limits the size of the response to the specified number of objects on each page. To return the total number of resources, set `Limit=0`. The total number of resources is returned as a `TotalItemCount` value. If the page size requested is larger than the system maximum limit, the server returns the maximum limit, disregarding the requested page size.

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

### -Offset

The starting position based on the results of the query in relation to the full set of response objects returned.

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

### -Sort

Returns the response objects in the order specified. Set `Sort` to the name in the response by which to sort. Sorting can be performed on any of the names in the response, and the objects can be sorted in ascending or descending order. By default, the response objects are sorted in ascending order. To sort in descending order, append the minus sign (`-`) to the name. A single request can be sorted on multiple objects. For example, you can sort all volumes from largest to smallest volume size, and then sort volumes of the same size in ascending order by volume name. To sort on multiple names, list the names.

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

### -VchostId

Performs the operation on the unique vchost IDs specified. Enter multiple vchost IDs in a comma-separated format. For example, `vchostid01,vchostid02`.

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

Performs the operation on the unique vchost name specified. Enter multiple names in a comma-separated format. For example, `vchost01,vchost02`.

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

[New-Pfa2VchostCertificate](New-Pfa2VchostCertificate.md)

[Remove-Pfa2VchostCertificate](Remove-Pfa2VchostCertificate.md)

[Update-Pfa2VchostCertificate](Update-Pfa2VchostCertificate.md)
