---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Update-Pfa2SoftwareInstallation

## SYNOPSIS

(REST API 2.3+) Modify software upgrade

## SYNTAX

```
Update-Pfa2SoftwareInstallation [-Array <Rest2Api>] [-XRequestID <String>] -Command <String>
 -CurrentStepId <String> [-AddOverrideChecksArgs <List[String]>]
 [-AddOverrideChecksName <List[String]>]
 [-AddOverrideChecksPersistent <List[Boolean]>] [-ApiVersion <String>] [<CommonParameters>]
```

## DESCRIPTION

Modifies a software upgrade by continuing, retrying, or aborting it. All `override_checks` are updated before the command is issued if `add_override_checks` is present. The `override_checks` parameter is valid when `Command` is set to `continue` or `retry`.

## EXAMPLES

### Example 1
```powershell
Update-Pfa2SoftwareInstallation -Array $FlashArray -Command 'purevol list'
```

Sets -Command on the software installation.

### Example 2
```powershell
Update-Pfa2SoftwareInstallation -Array $FlashArray -AddOverrideChecksArgs 'purity-6.8.4-install'
```

Sets -AddOverrideChecksArgs on the software installation.

### Example 3
```powershell
Update-Pfa2SoftwareInstallation -Array $FlashArray -AddOverrideChecksName 'override-checks-01'
```

Sets -AddOverrideChecksName on the software installation.

## PARAMETERS

### -AddOverrideChecksArgs

The name of the specific check within the override check to ignore so that the system can continue with the software upgrade. The `AddOverrideChecksName` parameter of the override check must be specified with the `AddOverrideChecksArgs` parameter. For example, if the HostIOCheck check fails on hosts host01 and host02, the system displays a list of these host names in the failed check. To override the HostIOCheck checks for host01 and host02, set `AddOverrideChecksName=HostIOCheck`, and set `AddOverrideChecksArgs=host01,host02`. Enter multiple `AddOverrideChecksArgs`. Note that not all checks have `AddOverrideChecksArgs` values.

reference: OverrideCheck

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

### -AddOverrideChecksName

The name of the upgrade check to be overridden so the software upgrade can continue if the check failed or is anticipated to fail during the upgrade process. Overriding the check forces the system to ignore the check failure and continue with the upgrade. If the check includes more specific checks that failed or are anticipated to fail, set them using the `AddOverrideChecksArgs` parameter. For example, the HostIOCheck check may include a list of hosts that have failed or are anticipated to fail the upgrade check.

reference: OverrideCheck

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

### -AddOverrideChecksPersistent

If set to `$True`, the system always ignores the failure of the specified upgrade check and continues with the upgrade process.  If set to `$False`, the system ignores the failure of the specified upgrade check until the upgrade check finishes and the upgrade process is continued. For example, the `continue` command is successfully issued in an `interactive` mode, or the first upgrade check step successfully finishes in a `one-click` mode.

reference: OverrideCheck

```yaml
Type: List[Boolean]
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

### -Command

A user command that interacts with the upgrade. Commands may only be issued when the upgrade is paused. Valid values are `continue`, `retry`, and `abort`. The `continue` command continues a `paused` upgrade. The `retry` command retries the previous step. The `abort` command aborts the upgrade.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CurrentStepId

The current step `id` of the installation.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
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

[New-Pfa2SoftwareInstallation](New-Pfa2SoftwareInstallation.md)
