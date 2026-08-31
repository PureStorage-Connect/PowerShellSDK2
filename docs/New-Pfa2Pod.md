---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2Pod

## SYNOPSIS

(REST API 2.1+) Create a pod

## SYNTAX

```
New-Pfa2Pod [-Array <Rest2Api>] [-XRequestID <String>] [-AllowThrottle <Boolean>]
 [-ContextName <List[String]>] [-Name <String>] [-QuotaLimit <Int64>]
 [-FailoverPreferencesId <List[String]>]
 [-FailoverPreferencesName <List[String]>] [-SourceId <String>]
 [-SourceName <String>] [-TagCopyable <List[Boolean]>]
 [-TagKey <List[String]>]
 [-TagNamespace <List[String]>]
 [-TagValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates a pod on the local array. Each pod must be given a unique name across the arrays to which they are stretched. A pod cannot be stretched to an array that already contains a pod with the same name. After a pod has been created, add volumes and protection groups, and then stretch the pod to another connected array. Known issue: cmdlet claims to create pod with tags, however tag related parameters are silently ignored. As a workaround, use cmdlet Set-Pfa2PodTagBatch to create or update tags for Pod object.

## EXAMPLES

### Example 1
```powershell
New-Pfa2Pod -Array $TargetArray -Name $RemotePodName
```

Create a POD on the FlashArray with $RemotePodName.

### Example 2
```powershell
New-Pfa2Pod -Array $FlashArray -Name 'prod-pod' -QuotaLimit 10TB -FailoverPreferencesName 'flasharray-01'
```

Creates a pod and sets -QuotaLimit and -FailoverPreferencesName in the same call.

### Example 3
```powershell
New-Pfa2Pod -Array $FlashArray -Name 'prod-pod' -TagKey 'environment' -TagValue 'production'
```

Creates a pod and applies the tag `environment=production`.

## PARAMETERS

### -AllowThrottle

If set to `$True`, allows operation to fail if array health is not optimal.

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

### -FailoverPreferencesId

(REST API 2.3+) A globally unique, system-generated ID. The ID cannot be modified.

reference: Reference

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

### -FailoverPreferencesName

(REST API 2.3+) The resource name, such as volume name, pod name, snapshot name, and so on.

reference: Reference

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

### -QuotaLimit

The logical quota limit of the pod, measured in bytes. Must be a multiple of 512.

minimum: 1048576

maximum: 4503599627370496

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

### -SourceId

(REST API 2.3+) The source pod from where data is cloned to create the new pod.

```yaml
Type: String
Parameter Sets: (All)
Aliases: SourceIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceName

(REST API 2.3+) The source pod from where data is cloned to create the new pod.

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

### -TagCopyable

Specifies whether or not to include the tag when copying the parent resource. If set to `$True`, the tag is included in resource copying. If set to `$False`, the tag is not included. If not specified, defaults to `$True`.

reference: Tag

```yaml
Type: List[Boolean]
Parameter Sets: (All)
Aliases: TagsCopyable

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TagKey

Key of the tag. Supports up to 64 Unicode characters.

reference: Tag

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: TagsKey

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TagNamespace

Optional namespace of the tag. Namespace identifies the category of the tag. Omitting the namespace defaults to the namespace `default`. The `pure*` namespaces are reserved for plugins and integration partners. It is recommended that customers avoid using reserved namespaces.

reference: Tag

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: TagsNamespace

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TagValue

Value of the tag. Supports up to 256 Unicode characters.

reference: Tag

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: TagsValue

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

[Get-Pfa2Pod](Get-Pfa2Pod.md)

[Remove-Pfa2Pod](Remove-Pfa2Pod.md)

[Update-Pfa2Pod](Update-Pfa2Pod.md)
