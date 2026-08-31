---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# New-Pfa2SoftwareInstallation

## SYNOPSIS

(REST API 2.3+) Create a software upgrade

## SYNTAX

```
New-Pfa2SoftwareInstallation [-Array <Rest2Api>] [-XRequestID <String>]
 -SoftwareId <List[String]> [-Mode <String>]
 [-OverrideCheckArgs <List[String]>]
 [-OverrideCheckName <List[String]>]
 [-OverrideCheckPersistent <List[Boolean]>]
 [-UpgradeParameterName <List[String]>]
 [-UpgradeParameterValue <List[String]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Creates and initiates a software upgrade.

## EXAMPLES

### Example 1
```powershell
New-Pfa2SoftwareInstallation -Array $FlashArray -SoftwareId $Software.Id
```

Creates a software installation with only the required parameters supplied.

### Example 2
```powershell
New-Pfa2SoftwareInstallation -Array $FlashArray -SoftwareId $Software.Id -Mode 'purity-6.8.4-install' -OverrideCheckArgs 'purity-6.8.4-install'
```

Creates a software installation and sets -Mode and -OverrideCheckArgs in the same call.

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

### -Mode

Mode that the upgrade is in. Valid values are `check-only`, `interactive`, `semi-interactive`, and `one-click`. The `check_only` mode is deprecated. Use `/software-checks`. In this mode, the upgrade only runs pre-upgrade checks and returns. In `interactive` mode, the upgrade pauses at several points, at which users must enter certain commands to proceed. In `semi-interactive` mode, the upgrade pauses if there are any upgrade check failures and functions like `one-click` mode otherwise. In `one-click` mode, the upgrade proceeds automatically without pausing.

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

### -OverrideCheckArgs

The name of the specific check within the override check to ignore so that the system can continue with the software upgrade. The `OverrideCheckName` parameter of the override check must be specified with the `OverrideCheckArgs` parameter. For example, if the HostIOCheck check fails on hosts host01 and host02, the system displays a list of these host names in the failed check. To override the HostIOCheck checks for host01 and host02, set `OverrideCheckName=HostIOCheck`, and set `OverrideCheckArgs=host01,host02`. Enter multiple `OverrideCheckArgs`. Note that not all checks have `OverrideCheckArgs` values.

reference: OverrideCheck

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: OverrideChecksArgs

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OverrideCheckName

The name of the upgrade check to be overridden so the software upgrade can continue if the check failed or is anticipated to fail during the upgrade process. Overriding the check forces the system to ignore the check failure and continue with the upgrade. If the check includes more specific checks that failed or are anticipated to fail, set them using the `OverrideCheckArgs` parameter. For example, the HostIOCheck check may include a list of hosts that have failed or are anticipated to fail the upgrade check.

reference: OverrideCheck

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: OverrideChecksNames

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OverrideCheckPersistent

If set to `$True`, the system always ignores the failure of the specified upgrade check and continues with the upgrade process.  If set to `$False`, the system ignores the failure of the specified upgrade check until the upgrade check finishes and the upgrade process is continued. For example, the `continue` command is successfully issued in an `interactive` mode, or the first upgrade check step successfully finishes in a `one-click` mode.

reference: OverrideCheck

```yaml
Type: List[Boolean]
Parameter Sets: (All)
Aliases: OverrideChecksPersistent

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SoftwareId

A list of software IDs.

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: SoftwareIds

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpgradeParameterName

The name of the upgrade parameter to be sent to the upgrade process.

reference: UpgradeParameters

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: UpgradeParametersName

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpgradeParameterValue

The value of the upgrade parameter to be sent to the upgrade process.

reference: UpgradeParameters

```yaml
Type: List[String]
Parameter Sets: (All)
Aliases: UpgradeParametersValue

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

[Get-Pfa2SoftwareInstallation](Get-Pfa2SoftwareInstallation.md)

[Update-Pfa2SoftwareInstallation](Update-Pfa2SoftwareInstallation.md)
