---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2DirectoryService

## SYNOPSIS

(REST API 2.2+) Modify directory services configuration

## SYNTAX

```
Update-Pfa2DirectoryService [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>]
 [-ToMemberId <List[String]>]
 [-ToMemberName <List[String]>] [-DirectoryServiceName <String>]
 [-BaseDn <String>] [-BindPassword <SecureString>] [-BindUser <String>] [-Enabled <Boolean>]
 [-Uri <List[String]>] [-CaCertificate <String>] [-CheckPeer <Boolean>]
 [-CaCertificateRefId <String>] [-CaCertificateRefName <String>] [-CaCertificateRefResourceType <String>]
 [-ManagementSshPublicKeyAttribute <String>] [-ManagementUserLoginAttribute <String>]
 [-ManagementUserObjectClass <String>] [-SourceId <List[String]>]
 [-SourceName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies the directory service configuration.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2DirectoryService -Array $FlashArray -Name $response.Name -BindUser $bindUser -BindPassword $Password -BaseDN $baseDN -URIS $DSUri
```

Find directory service by name $response.Name and update with the new values ofBindUser, BindPassword, BaseDN, and URIS.

### Example 2
```powershell
Update-Pfa2DirectoryService -Array $FlashArray -Name 'management' -DirectoryServiceName 'management-renamed'
```

Renames the directory service configuration 'management' to 'management-renamed'.

### Example 3
```powershell
Update-Pfa2DirectoryService -Array $FlashArray -Name 'management' -Enabled $true
```

Sets -Enabled on the directory service configuration named 'management'.

### Example 4
```powershell
Update-Pfa2DirectoryService -Array $FlashArray -Name 'management' -ToMemberName 'esx-cluster-02'
```

Sets -ToMemberName on the directory service configuration named 'management'.

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

### -BaseDn

Base of the Distinguished Name (DN) of the directory service groups.

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

### -BindPassword

Masked password used to query the directory.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BindUser

Username used to query the directory.

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

### -CaCertificate

The certificate of the Certificate Authority (CA) that signed the directory servers' certificate(s), which is used to validate the authenticity of the configured servers. Deprecated, please use ca_certificate_ref instead. Setting this field will result in ca_certificate_ref being updated to legacy_ds_ca_certificate <config_name>.

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

### -CaCertificateRefId

Reference (ID, name, and resource type) of the Certificate Authority (CA) that signed the certificates of the directory servers, which is used to validate the authenticity of the configured servers.

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

### -CaCertificateRefName

Reference (ID, name, and resource type) of the Certificate Authority (CA) that signed the certificates of the directory servers, which is used to validate the authenticity of the configured servers.

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

### -CaCertificateRefResourceType

Reference (ID, name, and resource type) of the Certificate Authority (CA) that signed the certificates of the directory servers, which is used to validate the authenticity of the configured servers.  Reference (ID, name, and resource type) of the Certificate Authority (CA) that signed the certificates of the directory servers, which is used to validate the authenticity of the configured servers.

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

### -CheckPeer

Determines whether or not server authenticity is enforced when a certificate is provided.

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

### -DirectoryServiceName

(REST API 2.3+) The new name for the resource. The name is expected to be fully qualified, meaning if the object is contained in some context, the corresponding name would provide complete information about the containment hierarchy. For example, `name01,realm01::name01,realm01::pod01::name01`.

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

### -Enabled

The directory service is either enabled or disabled.

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

### -ManagementSshPublicKeyAttribute

Properties specific to the management service. Properties specific to the management service.

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

### -ManagementUserLoginAttribute

(REST API 2.3+) Properties specific to the management service. Properties specific to the management service.

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

### -ManagementUserObjectClass

(REST API 2.3+) Properties specific to the management service. Properties specific to the management service.

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

### -SourceId

A globally unique, system-generated ID. The ID cannot be modified.

reference: Reference

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: SourceIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceName

The resource name, such as volume name, pod name, snapshot name, and so on.

reference: Reference

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: SourceNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToMemberId

The resource will be moved to the specified local member realm or array. Enter multiple IDs in a comma-separated format.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ToMemberIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ToMemberName

The resource will be moved to the specified local member realm or array. Enter multiple names in a comma-separated format.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: ToMemberNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Uri

List of URIs for the configured directory servers.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: Uris

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

[Get-Pfa2DirectoryService](Get-Pfa2DirectoryService.md)

[New-Pfa2DirectoryService](New-Pfa2DirectoryService.md)

[Remove-Pfa2DirectoryService](Remove-Pfa2DirectoryService.md)
