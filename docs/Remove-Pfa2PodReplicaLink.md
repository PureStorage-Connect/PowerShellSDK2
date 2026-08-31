---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Remove-Pfa2PodReplicaLink

## SYNOPSIS

(REST API 2.2+) Delete pod replica links

## SYNTAX

```
Remove-Pfa2PodReplicaLink [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-Id <List[String]>]
 [-LocalPodId <List[String]>]
 [-LocalPodName <List[String]>]
 [-RemotePodId <List[String]>]
 [-RemotePodName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Deletes pod replica links. The `LocalPodName` and `RemotePodName` are required. Valid values are `replicating`, `baselining`, `paused`, `unhealthy`, `quiescing`, and `quiesced`. A status of `replicating` indicates that the source array is replicating to the target array. A status of `baselining` indicates that the the initial version of the dataset is being sent. During this phase, you cannot promote the target pod. In addition, changing the link direction might trigger the `baselining` status to recur. A status of `paused ` indicates that data transfer between objects has stopped. A status of `unhealthy` indicates that the link is currently unhealthy and customers must perform some health checks to determine the cause. A status of `quiescing` indicates that the source pod is not accepting new write requests but the most recent changes to the source have not arrived on the target. A status of `quiesced` indicates that the source pod has been demoted and all changes have been replicated to the target pod.

## EXAMPLES

### Example 1
```powershell
Remove-Pfa2PodReplicaLink -Array $FlashArray -LocalPodNames $LocalPodName -RemotePodNames $RemotePodName
```

Remove a POD replica link from FlashArray where local pod names is $LocalPodName and remote pod names is $RemotePodName.

### Example 2
```powershell
Remove-Pfa2PodReplicaLink -Array $FlashArray -LocalPodName 'local-pod-01' -RemotePodName 'array2:prod-pod'
```

Deletes the pod replica link.

### Example 3
```powershell
Remove-Pfa2PodReplicaLink -Array $FlashArray -LocalPodName 'local-pod-01'
```

Deletes the pod replica link, also specifying -LocalPodName.

### Example 4
```powershell
Remove-Pfa2PodReplicaLink -Array $FlashArray -RemotePodName 'array2:prod-pod'
```

Deletes the pod replica link, also specifying -RemotePodName.

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

[Get-Pfa2PodReplicaLink](Get-Pfa2PodReplicaLink.md)

[New-Pfa2PodReplicaLink](New-Pfa2PodReplicaLink.md)

[Update-Pfa2PodReplicaLink](Update-Pfa2PodReplicaLink.md)
