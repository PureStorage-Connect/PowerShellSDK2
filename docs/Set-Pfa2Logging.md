---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Set-Pfa2Logging

## SYNOPSIS

Control logging to a named file.

## SYNTAX

```
Set-Pfa2Logging [[-LogFilename] <String>] [<CommonParameters>]
```

## DESCRIPTION

Set logging of all Pure Storage PowerShell SDK activity to a file.

## EXAMPLES

### Example 1
```powershell
Set-Pfa2Logging -LogFilename 'session.log'
```

Starts writing SDK request and response logging to session.log in the current folder. Open a second PowerShell session and run `Get-Content session.log -Wait` to follow it live.

### Example 2
```powershell
Set-Pfa2Logging
```

Stops SDK logging by clearing the log file name.

## PARAMETERS

### -LogFilename

Path to the file. Set to empty string or null to turn off logging. Logs will always be appended to the end of the file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### PureStorage.Rest.PureApiClientAuthInfo

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)
