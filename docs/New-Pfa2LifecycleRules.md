---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2LifecycleRules

## SYNOPSIS

(REST API 2.26+) Create a bucket lifecycle rule

## SYNTAX

```
New-Pfa2LifecycleRules [-Array <Rest2Api>] [-XRequestID <String>] [-ConfirmDate <Boolean>]
 [-ContextName <List[String]>]
 [-AbortIncompleteMultipartUploadsAfter <Int64>] [-KeepCurrentVersionFor <Int64>]
 [-KeepCurrentVersionUntil <DateTime>] [-KeepPreviousVersionFor <Int64>] [-Prefix <String>] [-RuleId <String>]
 [-BucketId <String>] [-BucketName <String>] [-BucketResourceType <String>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a lifecycle rule on an object store bucket. Durations such as `KeepCurrentVersionFor` are expressed in milliseconds. A rule that acts on a fixed date must also set `ConfirmDate`.

## EXAMPLES

### Example 1
```powershell
New-Pfa2LifecycleRules -Array $FlashArray -BucketName 'analytics-bucket' -RuleId 'expire-old-versions' -KeepPreviousVersionFor 604800000 -Prefix 'logs/'
```

Adds a lifecycle rule that keeps noncurrent versions of objects under logs/ for seven days. Durations are in milliseconds.

### Example 2
```powershell
New-Pfa2LifecycleRules -Array $FlashArray -BucketName 'analytics-bucket' -RuleId 'abort-stale-uploads' -AbortIncompleteMultipartUploadsAfter 86400000 -ConfirmDate $true
```

Adds a rule that abandons incomplete multipart uploads after 24 hours. -ConfirmDate acknowledges rules that act on a fixed date.

### Example 3
```powershell
New-Pfa2LifecycleRules -Array $FlashArray -AbortIncompleteMultipartUploadsAfter 86400000 -KeepCurrentVersionFor 2592000000 -KeepPreviousVersionFor 604800000
```

Creates a bucket lifecycle rule on the array.

### Example 4
```powershell
New-Pfa2LifecycleRules -Array $FlashArray -AbortIncompleteMultipartUploadsAfter 86400000
```

Creates a bucket lifecycle rule specifying only -AbortIncompleteMultipartUploadsAfter.

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

### -BucketId

The ID of the bucket the operation applies to. The `BucketId` or `BucketName` parameter is required, but they cannot be set together.

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

### -BucketName

The name of the bucket the operation applies to. The `BucketId` or `BucketName` parameter is required, but they cannot be set together.

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

### -BucketResourceType

The resource type of the referenced bucket. Set this when a name could refer to more than one type of resource.

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

### -RuleId

The identifier of the lifecycle rule. Rule IDs must be unique within a bucket.

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

### None

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)

[Get-Pfa2LifecycleRules](Get-Pfa2LifecycleRules.md)

[Remove-Pfa2LifecycleRules](Remove-Pfa2LifecycleRules.md)

[Update-Pfa2LifecycleRules](Update-Pfa2LifecycleRules.md)
