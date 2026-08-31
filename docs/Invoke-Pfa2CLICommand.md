---
external help file: PureStoragePowerShellSDK2.dll-Help.xml
Module Name: PureStoragePowerShellSDK2
online version:
schema: 2.0.0
---

# Invoke-Pfa2CLICommand

## SYNOPSIS

Execute CLI Command on the FlashArray

## SYNTAX

### UserName
```
Invoke-Pfa2CLICommand -EndPoint <String> -UserName <String> -Password <SecureString>
 [-TimeOutInMilliSeconds <Int32>] -CommandText <String> [-IgnoreCertificateError] [<CommonParameters>]
```

### Credential
```
Invoke-Pfa2CLICommand -EndPoint <String> -Credential <PSCredential> [-TimeOutInMilliSeconds <Int32>]
 -CommandText <String> [-IgnoreCertificateError] [<CommonParameters>]
```

## DESCRIPTION

Execute CLI Command on the FlashArray

## EXAMPLES

### Example 1
```powershell
Invoke-Pfa2CLICommand -EndPoint 'flasharray-01.example.com' -Credential (Get-Credential) -CommandText 'purevol list' -IgnoreCertificateError
```

Runs a Purity CLI command over SSH and returns its text output. Use this for the few operations that have no REST equivalent.

### Example 2
```powershell
Invoke-Pfa2CLICommand -EndPoint 'flasharray-01.example.com' -UserName 'pureuser' -Password $SecurePassword -CommandText 'purepgroup snap --replicate-now db-daily-pg' -IgnoreCertificateError
```

Takes a protection group snapshot and replicates it immediately, passing the credentials as a username and a secure string instead of a PSCredential.

### Example 3
```powershell
Invoke-Pfa2CLICommand -EndPoint 'flasharray-01.example.com' -Credential $Credential -CommandText 'purearray list --space' -TimeOutInMilliSeconds 60000 -IgnoreCertificateError
```

Runs a CLI command with a 60-second timeout instead of the default.

### Example 4
```powershell
Invoke-Pfa2CLICommand -EndPoint $ArrayEndpoint -Username $ArrayUsername -Password $Password -CommandText $CommandText
```

Run a SSH cli command on FlashArray using Invoke-Pfa2CLICommand.

## PARAMETERS

### -CommandText

The CLI command to run on the FlashArray

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

### -Credential

The credentials for SSH access to the FlashArray

```yaml
Type: PSCredential
Parameter Sets: Credential
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -EndPoint

The management address of the FlashArray

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IgnoreCertificateError

Prevents certificate errors such as an unknown certificate issuer or non-matching names from causing the request to fail.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password

The SSH password for the FlashArray

```yaml
Type: SecureString
Parameter Sets: UserName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TimeOutInMilliSeconds

Timeout in milliseconds

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserName

The SSH username for the FlashArray

```yaml
Type: String
Parameter Sets: UserName
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### String

### System.Management.Automation.PSCredential

## OUTPUTS

### Object

## NOTES

The `Array` parameter is optional once `Connect-Pfa2Array` has run in the current session, because the connection is cached. For global SDK options run `Help about_Pfa2Configuration`, and for the `Filter` syntax run `Help about_Pfa2Filtering`.

## RELATED LINKS

[Pure Storage PowerShell SDK 2 on GitHub](https://github.com/PureStorage-Connect/PowerShellSDK2)

[Pure Storage Windows PowerShell guide](https://support.purestorage.com/Solutions/Microsoft_Platform_Guide/a_Windows_PowerShell)
