---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2LifecycleRules

## SYNOPSIS

(REST API 2.26+) Modify a bucket lifecycle rule

## SYNTAX

```
Update-Pfa2LifecycleRules [-Array <Rest2Api>] [-XRequestID <String>]
 [-BucketIds <List[String]>]
 [-BucketNames <List[String]>] [-ConfirmDate <Boolean>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>]
 [-AbortIncompleteMultipartUploadsAfter <Int64>] [-KeepCurrentVersionFor <Int64>]
 [-KeepCurrentVersionUntil <DateTime>] [-KeepPreviousVersionFor <Int64>] [-Prefix <String>]
 [-Enabled <Boolean>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies an existing bucket lifecycle rule, for example to change its retention periods, its prefix, or whether it is enabled.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2LifecycleRules -Array $FlashArray -Name 'expire-old-versions' -Enabled $true
```

Sets -Enabled on the bucket lifecycle rule named 'expire-old-versions'.

### Example 2
```powershell
Update-Pfa2LifecycleRules -Array $FlashArray -Name 'expire-old-versions' -BucketNames 'analytics-bucket'
```

Sets -BucketNames on the bucket lifecycle rule named 'expire-old-versions'.

### Example 3
```powershell
Update-Pfa2LifecycleRules -Array $FlashArray -Name 'expire-old-versions' -AbortIncompleteMultipartUploadsAfter 86400000
```

Sets -AbortIncompleteMultipartUploadsAfter on the bucket lifecycle rule named 'expire-old-versions'.

## PARAMETERS

### -AbortIncompleteMultipartUploadsAfter

The number of milliseconds after which the bucket abandons an incomplete multipart upload and reclaims its space.

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

### -BucketIds

The IDs of the buckets the operation applies to. Enter multiple bucket IDs. The `BucketIds` or `BucketNames` parameter can be used, but not both.

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

### -BucketNames

The names of the buckets the operation applies to. Enter multiple bucket names. The `BucketIds` or `BucketNames` parameter can be used, but not both.

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

### -ConfirmDate

Set to `$True` to confirm a lifecycle rule that acts on a fixed date rather than on an age. The array rejects such a rule unless this is set.

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

If set to `$True`, enables the policy. If set to `$False`, disables the policy.

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

Performs the operation on the unique resource IDs specified. Enter multiple resource IDs. The `Id` or `Name` parameter is required, but they cannot be set together.

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

### -KeepCurrentVersionFor

The number of milliseconds for which the current version of an object is kept before the lifecycle rule expires it. Cannot be set together with `KeepCurrentVersionUntil`.

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

### -KeepCurrentVersionUntil

The date after which the current version of an object is expired by the lifecycle rule. Cannot be set together with `KeepCurrentVersionFor`.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -KeepPreviousVersionFor

The number of milliseconds for which noncurrent versions of an object are kept before the lifecycle rule expires them.

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

### -Prefix

The IPv4 or IPv6 address to be associated with the specified subnet.

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

[Get-Pfa2LifecycleRules](Get-Pfa2LifecycleRules.md)

[New-Pfa2LifecycleRules](New-Pfa2LifecycleRules.md)

[Remove-Pfa2LifecycleRules](Remove-Pfa2LifecycleRules.md)
