---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2Offload

## SYNOPSIS

(REST API 2.1+) Create offload target

## SYNTAX

```
New-Pfa2Offload [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>] [-Initialize <Boolean>] [-Name <String>]
 [-AzureAccountName <String>] [-AzureClientId <String>] [-AzureClientSecret <String>]
 [-AzureContainerName <String>] [-AzurePlacementStrategy <String>] [-AzureProfile <String>]
 [-AzureSecretAccessKey <String>] [-AzureTenantId <String>] [-GoogleCloudAccessKeyId <String>]
 [-GoogleCloudBucket <String>] [-GoogleCloudProfile <String>] [-GoogleCloudSecretAccessKey <String>]
 [-NfsAddress <String>] [-NfsMountOptions <String>] [-NfsMountPoint <String>] [-NfsProfile <String>]
 [-AmazonS3AccessKeyId <String>] [-AmazonS3AuthRegion <String>] [-AmazonS3Bucket <String>]
 [-AmazonS3PlacementStrategy <String>] [-AmazonS3Profile <String>] [-AmazonS3SecretAccessKey <String>]
 [-AmazonS3Uri <String>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates an offload target, connecting it to an array. Before you can connect to, manage, and replicate to an offload target, the Purity Run app must be installed.

## EXAMPLES

### Example 1
```powershell
New-Pfa2Offload -Array $FlashArray -Name 'nfs-offload' -NfsAddress 'nfs.example.com' -NfsMountPoint '/exports/offload' -Initialize $true
```

Creates an NFS offload target and initializes it. The NFS settings are now individual -Nfs* parameters rather than an object.

### Example 2
```powershell
New-Pfa2Offload -Array $FlashArray -Name 's3-offload' -AmazonS3Bucket 'offload-bucket' -AmazonS3AccessKeyId 'AKIAEXAMPLEKEYID' -AmazonS3SecretAccessKey $SecretAccessKey -AmazonS3AuthRegion 'us-west-2' -Initialize $true
```

Creates an Amazon S3 offload target.

### Example 3
```powershell
New-Pfa2Offload -Array $FlashArray -Name 'azure-offload' -AzureAccountName 'exampleoffload' -AzureContainerName 'offload-container' -AzureSecretAccessKey $SecretAccessKey -Initialize $true
```

Creates an Azure Blob offload target.

### Example 4
```powershell
New-Pfa2Offload -Array $FlashArray -Name 'nfs-offload'
```

Creates an offload target named 'nfs-offload'.

## PARAMETERS

### -AmazonS3AccessKeyId

(REST API 2.3+) S3 settings.  S3 settings.

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

### -AmazonS3AuthRegion

S3 settings.  S3 settings.

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

### -AmazonS3Bucket

(REST API 2.3+) S3 settings.  S3 settings.

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

### -AmazonS3PlacementStrategy

(REST API 2.3+) S3 settings.  S3 settings.

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

### -AmazonS3Profile

S3 settings.  S3 settings.

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

### -AmazonS3SecretAccessKey

(REST API 2.3+) S3 settings.  S3 settings.

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

### -AmazonS3Uri

(REST API 2.3+) S3 settings.  S3 settings.

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

### -AzureAccountName

(REST API 2.3+) Microsoft Azure Blob storage settings.  Microsoft Azure Blob storage settings.

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

### -AzureClientId

The application (client) ID of the Microsoft Entra ID application used to authenticate to the Azure Blob offload target.

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

### -AzureClientSecret

The client secret of the Microsoft Entra ID application used to authenticate to the Azure Blob offload target.

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

### -AzureContainerName

(REST API 2.3+) Microsoft Azure Blob storage settings.  Microsoft Azure Blob storage settings.

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

### -AzurePlacementStrategy

The strategy the array uses to place offloaded data across Azure Blob storage.

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

### -AzureProfile

Microsoft Azure Blob storage settings.  Microsoft Azure Blob storage settings.

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

### -AzureSecretAccessKey

(REST API 2.3+) Microsoft Azure Blob storage settings.  Microsoft Azure Blob storage settings.

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

### -AzureTenantId

The Microsoft Entra ID tenant ID that the offload application belongs to.

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

### -GoogleCloudAccessKeyId

(REST API 2.3+) Google Cloud Storage settings.  Google Cloud Storage settings.

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

### -GoogleCloudBucket

(REST API 2.3+) Google Cloud Storage settings.  Google Cloud Storage settings.

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

### -GoogleCloudProfile

Google Cloud Storage settings.  Google Cloud Storage settings.

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

### -GoogleCloudSecretAccessKey

(REST API 2.3+) Google Cloud Storage settings.  Google Cloud Storage settings.

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

### -Initialize

If set to `$True`, initializes the Amazon S3/Azure Blob container/Google Cloud Storage in preparation for offloading. The parameter must be set to `$True` if this is the first time the array is connecting to the offload target.

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

### -NfsAddress

(REST API 2.3+) NFS settings. Deprecated from version 6.6.0 onwards - Contact support for additional information. NFS settings. Deprecated from version 6.6.0 onwards - Contact support for additional information.

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

### -NfsMountOptions

(REST API 2.3+) NFS settings. Deprecated from version 6.6.0 onwards - Contact support for additional information. NFS settings. Deprecated from version 6.6.0 onwards - Contact support for additional information.

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

### -NfsMountPoint

(REST API 2.3+) NFS settings. Deprecated from version 6.6.0 onwards - Contact support for additional information. NFS settings. Deprecated from version 6.6.0 onwards - Contact support for additional information.

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

### -NfsProfile

NFS settings. Deprecated from version 6.6.0 onwards - Contact support for additional information. NFS settings. Deprecated from version 6.6.0 onwards - Contact support for additional information.

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

[Get-Pfa2Offload](Get-Pfa2Offload.md)

[Remove-Pfa2Offload](Remove-Pfa2Offload.md)

[Update-Pfa2Offload](Update-Pfa2Offload.md)
