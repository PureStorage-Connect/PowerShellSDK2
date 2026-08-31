---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Disconnect-Pfa2Array

## SYNOPSIS

Close the connection to the array

## SYNTAX

```
Disconnect-Pfa2Array [-Array <Rest2Api>] [<CommonParameters>]
```

## DESCRIPTION

Close the connection to the array

## EXAMPLES

### Example 1
```powershell
Disconnect-Pfa2Array -Array $FlashArray
```

Closes the session held in $FlashArray and invalidates its access token.

### Example 2
```powershell
Disconnect-Pfa2Array
```

Closes the cached session created by the most recent Connect-Pfa2Array call in this PowerShell session.

### Example 3
```powershell
$Arrays | ForEach-Object { Disconnect-Pfa2Array -Array $_ }
```

Closes every session in a collection of connected arrays.

## PARAMETERS

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

[Connect-Pfa2Array](Connect-Pfa2Array.md)

[Get-Pfa2Array](Get-Pfa2Array.md)

[Remove-Pfa2Array](Remove-Pfa2Array.md)

[Update-Pfa2Array](Update-Pfa2Array.md)
