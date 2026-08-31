---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Remove-Pfa2PodArray

## SYNOPSIS

(REST API 2.1+) Delete a pod that was stretched to an array

## SYNTAX

```
Remove-Pfa2PodArray [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-GroupId <List[String]>]
 [-GroupName <List[String]>]
 [-MemberId <List[String]>]
 [-MemberName <List[String]>] [-WithUnknown <Boolean>]
 [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Deletes a pod that was stretchd to an array, collapsing the pod to a single array. Unstretch a pod from an array when the volumes within the stretched pod no longer need to be synchronously replicated between the two arrays. After a pod has been unstretched, synchronous replication stops. A destroyed version of the pod with 'restretch' appended to the pod name is created on the array that no longer has the pod. The restretched pod represents a point-in-time snapshot of the pod, just before it was unstretched. The restretch pod enters an eradication pending period starting from the time that the pod was unstretched. A restretched pod can be cloned or destroyed, but it cannot be explicitly recovered. The `GroupName` parameter represents the name of the pod to be unstretched. The `MemberName` parameter represents the name of the array from which the pod is to be unstretched. The `GroupName` and `MemberName` parameters are required and must be set together. (Deprecated) Use pods/members instead.

## EXAMPLES

### Example 1
```powershell
Remove-Pfa2PodArray -Array $FlashArray -GroupName 'prod-pod' -MemberName 'array2'
```

Removes remote array 'array2' from pod 'prod-pod'. The remote array itself is not deleted.

### Example 2
```powershell
Get-Pfa2PodArray -Array $FlashArray -GroupName 'prod-pod' | ForEach-Object { Remove-Pfa2PodArray -Array $FlashArray -GroupName 'prod-pod' -MemberName $_.Member.Name }
```

Removes every current member of pod 'prod-pod'.

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

### -GroupId

A list of group IDs.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: GroupIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GroupName

Performs the operation on the unique group name specified. Examples of groups include host groups, pods, protection groups, and volume groups. Enter multiple names. For example, `hgroup01,hgroup02`.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: GroupNames

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

### -WithUnknown

If set to `$True`, unstretches the specified pod from the specified array by force. Use the `WithUnknown` parameter in the following rare event: the local array goes offline while the pod is still stretched across two arrays, the status of the remote array becomes unknown, and there is no guarantee that the pod is online elsewhere.

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

[Get-Pfa2PodArray](Get-Pfa2PodArray.md)

[New-Pfa2PodArray](New-Pfa2PodArray.md)
