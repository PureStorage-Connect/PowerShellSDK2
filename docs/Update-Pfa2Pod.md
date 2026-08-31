---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2Pod

## SYNOPSIS

(REST API 2.1+) Modify a pod

## SYNTAX

```
Update-Pfa2Pod [-Array <Rest2Api>] [-XRequestID <String>] [-AbortQuiesce <Boolean>]
 [-ContextName <List[String]>] [-DestroyContents <Boolean>]
 [-FromMemberId <List[String]>]
 [-FromMemberNames <List[String]>]
 [-Id <List[String]>]
 [-MoveWithHostGroupName <List[String]>]
 [-MoveWithHostName <List[String]>] [-Name <String>]
 [-PromoteFrom <String>] [-Quiesce <Boolean>] [-SkipQuiesce <Boolean>]
 [-ToMemberId <List[String]>]
 [-ToMemberName <List[String]>] [-PodName <String>] [-Destroyed <Boolean>]
 [-IgnoreUsage <Boolean>] [-Mediator <String>] [-RequestedPromotionState <String>] [-QuotaLimit <Int64>]
 [-FailoverPreferencesId <List[String]>]
 [-FailoverPreferencesName <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies pod details.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2Pod -Array $TargetArray -Name $RemotePodName -Destroyed $true
```

Destroy a remote pod with name $RemotePodName (This is not eradicated)

### Example 2
```powershell
Update-Pfa2Pod -Array $TargetArray -Name $RemotePod.Name -RequestedPromotionState "demoted"
```

Demote a remote POD with name $RemotePod.Name on FlashArray.

### Example 3
```powershell
Update-Pfa2Pod -Array $FlashArray -Name $Pod.Name -Destroyed $true -ErrorAction Stop
```

Destroy a POD $Pod.Name. Assert if there is an error. (POD is not eradicated, see Remove-Pfa2Pod)

### Example 4
```powershell
Update-Pfa2Pod -Array $FlashArray -Name 'prod-pod' -PodName 'prod-pod-renamed'
```

Renames the pod 'prod-pod' to 'prod-pod-renamed'.

## PARAMETERS

### -AbortQuiesce

(REST API 2.2+) Set to `$True` to promote the pod when the `pod-replica-link` is in the `quiescing` state and abort when waiting for the `pod-replica-link` to complete the quiescing operation.

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

### -DestroyContents

(REST API 2.3+) Set to `$True` to destroy contents (e.g., volumes, protection groups, snapshots) and containers (e.g., realms, pods, volume groups), including eradicating containers with content.

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

### -Destroyed

If set to `$True`, the pod has been destroyed and is pending eradication. The `TimeRemaining` value displays the amount of time left until the destroyed pod is permanently eradicated. A pod can only be destroyed if it is empty, so before destroying a pod, ensure all volumes and protection groups inside the pod have been either moved out of the pod or destroyed. A stretched pod cannot be destroyed unless you unstretch it first. Before the `TimeRemaining` period has elapsed, the destroyed pod can be recovered by setting `Destroyed=$False`. Once the `TimeRemaining` period has elapsed, the pod is permanently eradicated and can no longer be recovered.

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

### -FromMemberId

Move the resource from the specified local member realm or array. This should be a union of all local realms and arrays from which the resource should be removed. Enter multiple IDs in a comma-separated format.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: FromMemberIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FromMemberNames

Move the resource from the specified local member realm or array. This should be a union of all local realms and arrays to be removed from the specified resource. Enter multiple names in a comma-separated format.

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

### -IgnoreUsage

Set to `$True` to set a `QuotaLimit` that is lower than the existing usage. This ensures that no new volumes can be created until the existing usage drops below the `QuotaLimit`. If not specified, defaults to `$False`.

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

### -Mediator

Sets the URL of the mediator for this pod, replacing the URL of the current mediator. By default, the Pure1 Cloud Mediator (`purestorage`) serves as the mediator.

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

### -MoveWithHostGroupName

The host groups to be moved together with the pods to the specified local member realm or array. All the hosts in the host groups will also be moved. Enter multiple names in a comma-separated format.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: MoveWithHostGroupNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MoveWithHostName

The hosts to be moved together with the pods to the specified local member realm or array. Enter multiple names in a comma-separated format.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: MoveWithHostNames

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

### -PodName

A user-specified name. The name must be locally unique and can be changed.

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

### -PromoteFrom

(REST API 2.2+) The `undo-demote` pod that should be used to promote the pod. After the pod has been promoted, it will have the same data as the `undo-demote` pod and the `undo-demote` pod will be eradicated.

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

### -Quiesce

(REST API 2.2+) Set to `$True` to demote the pod after the `pod-replica-link` goes into `quiesced` state and allow the pod to become a target of the remote pod. This ensures that all local data has been replicated to the remote pod before the pod is demoted.

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

### -RequestedPromotionState

(REST API 2.2+) Patch `RequestedPromotionState` to `demoted` to demote the pod so that it can be used as a link target for continuous replication between pods. Demoted pods do not accept write requests, and a destroyed version of the pod with `undo-demote` appended to the pod name is created on the array with the state of the pod when it was in the promoted state. Patch `RequestedPromotionState` to `promoted` to start the process of promoting the pod. The `promotion_status` indicates when the pod has been successfully promoted. Promoted pods stop incorporating replicated data from the source pod and start accepting write requests. The replication process does not stop when the source pod continues replicating data to the pod. The space consumed by the unique replicated data is tracked by the `space.journal` field of the pod.

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

### -SkipQuiesce

(REST API 2.2+) Set to `$True` to demote the pod without quiescing the `pod-replica-link` and allow the pod to become a target of the remote pod. This stops all pending replication to the remote pod.

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

[New-Pfa2Pod](New-Pfa2Pod.md)

[Remove-Pfa2Pod](Remove-Pfa2Pod.md)
