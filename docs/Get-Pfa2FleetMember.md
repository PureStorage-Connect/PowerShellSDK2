---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Get-Pfa2FleetMember

## SYNOPSIS

List fleet members

## SYNTAX

```
Get-Pfa2FleetMember [-Array <Rest2Api>] [-XRequestID <String>] [-Filter <String>]
 [-FleetId <List[String]>]
 [-FleetName <List[String]>] [-Limit <Int32>]
 [-MemberId <List[String]>]
 [-MemberName <List[String]>] [-Offset <Int32>]
 [-Sort <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Displays the members in the current fleet. Known issue: cmdlet throws error when parameters -FleetId, -FleetName, -MemberId or -MemberName are provided.

## EXAMPLES

### Example 1
```powershell
Get-Pfa2FleetMember -Array $FlashArray
```

Lists every remote array-to-fleet membership on the array.

### Example 2
```powershell
Get-Pfa2FleetMember -Array $FlashArray -FleetName 'prod-fleet'
```

Lists the remote arrays that belong to fleet 'prod-fleet'.

### Example 3
```powershell
Get-Pfa2FleetMember -Array $FlashArray -FleetName 'prod-fleet' -MemberName 'array2'
```

Checks whether remote array 'array2' is a member of fleet 'prod-fleet'.

### Example 4
```powershell
Get-Pfa2FleetMember -Array $FlashArray -Filter "name='array2*'"
```

Returns only the fleet members matching a server-side filter expression. For the filter syntax, run `Help about_Pfa2Filtering`.

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

### -FleetId

Performs the operation on the unique Fleet IDs specified. This query currently accepts only 1 ID.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: FleetIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FleetName

Performs the operation on the unique Fleet names specified.  This query currently accepts only 1 name.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: FleetNames

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

### -MemberId

Performs the operation on the unique member IDs specified. Enter multiple member IDs. The `MemberId` or `MemberName` parameter is required, but they cannot be set together.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: MemberIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MemberName

Performs the operation on the unique member name specified. Examples of members include volumes, hosts, host groups, and directories. Enter multiple names. For example, `vol01,vol02`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: MemberNames

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

[New-Pfa2FleetMember](New-Pfa2FleetMember.md)

[Remove-Pfa2FleetMember](Remove-Pfa2FleetMember.md)
