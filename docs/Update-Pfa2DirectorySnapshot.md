---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2DirectorySnapshot

## SYNOPSIS

(REST API 2.3+) Modify directory snapshot

## SYNTAX

```
Update-Pfa2DirectorySnapshot [-Array <Rest2Api>] [-XRequestID <String>]
 [-ContextName <List[String]>]
 [-Id <List[String]>] [-Name <String>] [-Destroyed <Boolean>]
 [-ClientName <String>] [-KeepFor <Int64>] [-DirectorySnapshotName <String>] [-Suffix <String>]
 [-PolicyId <String>] [-PolicyName <String>] [-ApiVersion <String>]
 [<CommonParameters>]
```

## DESCRIPTION

Modifies a directory snapshot. You can destroy, recover, or update the policy or time remaining of a directory snapshot. To destroy a directory snapshot, set `Destroyed=$True`. To recover a directory snapshot that has been destroyed and is pending eradication, set `Destroyed=$False`. To rename a directory snapshot, set `DirectorySnapshotName` to the new name. The `Id` or `Name` parameter is required, but they cannot be set together.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2DirectorySnapshot -Array $FlashArray -Name 'fs-prod-01:home.daily' -DirectorySnapshotName 'fs-prod-01:home.daily-renamed'
```

Renames the directory snapshot 'fs-prod-01:home.daily' to 'fs-prod-01:home.daily-renamed'.

### Example 2
```powershell
Update-Pfa2DirectorySnapshot -Array $FlashArray -Name 'fs-prod-01:home.daily' -Suffix 'daily'
```

Sets -Suffix on the directory snapshot named 'fs-prod-01:home.daily'.

### Example 3
```powershell
Update-Pfa2DirectorySnapshot -Array $FlashArray -Name 'fs-prod-01:home.daily' -ClientName '10.0.0.0/24'
```

Sets -ClientName on the directory snapshot named 'fs-prod-01:home.daily'.

### Example 4
```powershell
Update-Pfa2DirectorySnapshot -Array $FlashArray -Name 'fs-prod-01:home.daily' -Destroyed $true
```

Destroys the directory snapshot named 'fs-prod-01:home.daily'. The object enters the eradication pending state and can be recovered with `-Destroyed $false` until that period expires.

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

### -ClientName

(REST API 2.9+) The client name portion of the client-visible snapshot name. A full snapshot name is constructed in the form of `DIR.CLIENT_NAME.SUFFIX` where `DIR` is the managed directory name, `CLIENT_NAME` is the value of this field, and `SUFFIX` is the suffix. The client-visible snapshot name is `CLIENT_NAME.SUFFIX`. The client name of a directory snapshot managed by a snapshot policy is not changeable. If the `DirectorySnapshotName` and `ClientName` parameters are both specified, `ClientName` must match the client name portion of `DirectorySnapshotName`.

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

### -Destroyed

If set to `$True`, destroys a resource. Once set to `$True`, the `TimeRemaining` value will display the amount of time left until the destroyed resource is permanently eradicated. Before the `TimeRemaining` period has elapsed, the destroyed resource can be recovered by setting `Destroyed=$False`. Once the `TimeRemaining` period has elapsed, the resource is permanently eradicated and can no longer be recovered.

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

### -DirectorySnapshotName

(REST API 2.9+) The new name of a directory snapshot. The name of a directory snapshot managed by a snapshot policy is not changeable.

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

### -KeepFor

The amount of time to keep the snapshots, in milliseconds. Can only be set on snapshots that are not managed by any snapshot policy. Set to `""` to clear the keep_for value.

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

### -PolicyId

The snapshot policy that manages this snapshot. Set to `DirectorySnapshotName` or `PolicyId` to `""` to clear the policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases: PolicyIds

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PolicyName

The snapshot policy that manages this snapshot. Set to `DirectorySnapshotName` or `PolicyId` to `""` to clear the policy.

```yaml
Type: String
Parameter Sets: (All)
Aliases: PolicyNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Suffix

(REST API 2.9+) The suffix portion of the client-visible snapshot name. A full snapshot name is constructed in the form of `DIR.CLIENT_NAME.SUFFIX` where `DIR` is the managed directory name, `CLIENT_NAME` is the client name, and `SUFFIX` is the value of this field. The client-visible snapshot name is `CLIENT_NAME.SUFFIX`. The suffix of a directory snapshot managed by a snapshot policy is not changeable. If the `DirectorySnapshotName` and `Suffix` parameters are both specified, `Suffix` must match the suffix portion of `DirectorySnapshotName`.

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

[Get-Pfa2DirectorySnapshot](Get-Pfa2DirectorySnapshot.md)

[New-Pfa2DirectorySnapshot](New-Pfa2DirectorySnapshot.md)

[Remove-Pfa2DirectorySnapshot](Remove-Pfa2DirectorySnapshot.md)
