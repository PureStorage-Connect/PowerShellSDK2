---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2RemoteProtectionGroup

## SYNOPSIS

(REST API 2.1+) Modify a remote protection group

## SYNTAX

```
Update-Pfa2RemoteProtectionGroup [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>] [-On <String>]
 [-Destroyed <Boolean>] [-TargetRetentionAllForSec <Int32>] [-TargetRetentionDays <Int32>]
 [-TargetRetentionPerDay <Int32>] [-TargetRetentionPerPeriod <Int32>] [-TargetRetentionPeriodLengthMs <Int64>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies the snapshot retention schedule of a remote protection group. Also destroys a remote protection group from the offload target. Before the remote protection group can be destroyed, the offload target must first be removed from the protection group via the source array. The `On` parameter represents the name of the offload target. The `Id` or `Name` parameter and the `On` parameter are required and must be used together.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2RemoteProtectionGroup -Array $FlashArray -Name 'array2:db-daily-pg' -On 'nfs-offload' -TargetRetentionDays 7 -TargetRetentionAllForSec 86400
```

Sets the retention policy the offload target applies to this protection group. Retention is now set with the individual -TargetRetention* parameters rather than a policy object.

### Example 2
```powershell
Update-Pfa2RemoteProtectionGroup -Array $FlashArray -Name 'array2:db-daily-pg' -On 'nfs-offload' -Destroyed $true
```

Destroys the remote protection group on the offload target.

### Example 3
```powershell
Update-Pfa2RemoteProtectionGroup -Array $FlashArray -Name 'array2:db-daily-pg' -On 'nfs-offload'
```

Sets -On on the remote protection group named 'array2:db-daily-pg'.

### Example 4
```powershell
Update-Pfa2RemoteProtectionGroup -Array $FlashArray -Name 'array2:db-daily-pg' -TargetRetentionAllForSec 86400
```

Sets -TargetRetentionAllForSec on the remote protection group named 'array2:db-daily-pg'.

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

### -Destroyed

Returns a value of `$True` if the remote protection group has been destroyed and is pending eradication. The `TimeRemaining` value displays the amount of time left until the destroyed remote protection group is permanently eradicated. Before the `TimeRemaining` period has elapsed, the destroyed remote protection group can be recovered by setting `Destroyed=$False`. Once the `TimeRemaining` period has elapsed, the remote protection group is permanently eradicated and can no longer be recovered.

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

### -Id

(REST API 2.3+) Performs the operation on the unique resource IDs specified. Enter multiple resource IDs. The `Id` or `Name` parameter is required, but they cannot be set together.

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

### -On

Performs the operation on the target name specified. For example, `targetName01`.

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

### -TargetRetentionAllForSec

(REST API 2.3+) The retention policy for the remote protection group. The retention policy for the remote protection group.

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

### -TargetRetentionDays

(REST API 2.3+) The retention policy for the remote protection group. The retention policy for the remote protection group.

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

### -TargetRetentionPerDay

(REST API 2.3+) The retention policy for the remote protection group. The retention policy for the remote protection group.

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

### -TargetRetentionPeriodLengthMs

The retention policy for the remote protection group. The retention policy for the remote protection group.

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

### -TargetRetentionPerPeriod

The retention policy for the remote protection group. The retention policy for the remote protection group.

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

[Get-Pfa2RemoteProtectionGroup](Get-Pfa2RemoteProtectionGroup.md)

[Remove-Pfa2RemoteProtectionGroup](Remove-Pfa2RemoteProtectionGroup.md)
