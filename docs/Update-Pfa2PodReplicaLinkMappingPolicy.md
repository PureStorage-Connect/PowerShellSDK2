---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2PodReplicaLinkMappingPolicy

## SYNOPSIS

Modify policy mappings

## SYNTAX

```
Update-Pfa2PodReplicaLinkMappingPolicy [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-Id <List[String]>]
 [-LocalPodId <List[String]>]
 [-LocalPodName <List[String]>]
 [-PodReplicaLinkId <List[String]>]
 [-RemoteId <List[String]>]
 [-RemoteName <List[String]>]
 [-RemotePodId <List[String]>]
 [-RemotePodName <List[String]>]
 [-RemotePolicyId <List[String]>]
 [-RemotePolicyName <List[String]>] [-Mapping <String>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies policy mappings of a replica link. Valid `Mapping` values are `connected` and `disconnected`. `connected` indicates that the source policy and its attachments will be mirrored on the target pod. `disconnected` indicates that the associated policy and its attachments are independent from any policy on the remote. This operation can only be performed on the target side of a pod replica link.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2PodReplicaLinkMappingPolicy -Array $FlashArray -LocalPodName 'local-pod-01'
```

Sets -LocalPodName on the pod replica link mapping policy.

### Example 2
```powershell
Update-Pfa2PodReplicaLinkMappingPolicy -Array $FlashArray -RemoteName 'remote-01'
```

Sets -RemoteName on the pod replica link mapping policy.

### Example 3
```powershell
Update-Pfa2PodReplicaLinkMappingPolicy -Array $FlashArray -RemotePodName 'array2:prod-pod'
```

Sets -RemotePodName on the pod replica link mapping policy.

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

### -LocalPodId

A list of local pod IDs. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `LocalPodName` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: LocalPodIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocalPodName

A list of local pod names. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `LocalPodId` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: LocalPodNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Mapping

The mapping to set on this policy mapping. Valid values are `connected` and `disconnected`.

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

### -PodReplicaLinkId

A list of pod replica link IDs. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: PodReplicaLinkIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoteId

A list of remote array IDs. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `RemoteName` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemoteIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemoteName

A list of remote array names. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `RemoteId` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemoteNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemotePodId

A list of remote pod IDs. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `RemotePodName` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemotePodIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemotePodName

A list of remote pod names. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `RemotePodId` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemotePodNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemotePolicyId

A list of remote policy IDs. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `RemotePolicyName` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemotePolicyIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RemotePolicyName

A list of remote policy names. If, after filtering, there is not at least one resource that matches each of the elements, then an error is returned. This cannot be provided together with the `RemotePolicyId` query parameter.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: RemotePolicyNames

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

[Get-Pfa2PodReplicaLinkMappingPolicy](Get-Pfa2PodReplicaLinkMappingPolicy.md)
