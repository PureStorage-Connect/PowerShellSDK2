# Creating a PowerShell Session with FlashArray
There are two ways to create a PowerShell Session with FlashArray Purity API version 2.2 and later, through API Token or through OAUTH2 Token.
FlashArray Purity version 2.0 and 2.1 only allow for OAuth2 authentication.
To view which API versions are available on an array, open a browser and go to https://<FQDN or IP Address of Array>/api/api_version

## API Token
To create a PowerShell Session using API Token use the following command:
```powershell
    $Array = Connect-Pfa2Array -Endpoint $ArrayEndpoint -Credential (Get-Credential) -IgnoreCertificateError
```
You need to define `$ArrayEndpoint` with the FlashArray IP or Name. You will also be prompted for the username and password for the FlashArray.

## OAUTH2 Token
To create a PowerShell Session using OAUTH2 follow the 2 steps bellow:

1. **An API Client registration on the array, and an RSA key pair (certificates).**

    If you already have an API Client you can proceed to step 2.

    To create a PowerShell Session using OAUTH2 you need an API Client on the FlashArray. You can create an API Client either using the Purity//FA CLI commands (See `pureapiclient` command on the CLI for details), or using Pure Storage PowerShell SDK 2 REST session.

    There are two ways to create an API Client using Pure Storage PowerShell SDK 2: `New-Pfa2ApiClient` or `New-Pfa2ArrayAuth`.

    a. If you want to use your existing RSA key pair, use `New-Pfa2ApiClient`. Note that you need to be already authenticated with the array, either with an existing API Client or using the API Token. If you are not authenticated yet, do so using the `Connect-Pfa2Array` command as shown before. Once authenticated use the following command:
    ```powershell
    $ApiClient = New-Pfa2ApiClient -Array $Array -MaxRole $MaxRole -Issuer $ArrayIssuer -PublicKey $Certificate -Name $ClientName
    ```
    Where,
    - `$Array`        is the PureArray object returned by the `Connect-Pfa2Array` command.
    - `$MaxRole`      is the maximum role allowed for ID Tokens issued by this API client. Valid values are `array_admin`, `storage_admin`, `ops_admin`, and `readonly`.
    - `$ArrayIssuer`  is the name of the identity provider that will be issuing ID Tokens for this API client.
    - `$Certificate`  is the API Client's PEM formatted (Base64 encoded) RSA public key.
    - `$ClientName`   is the unique name to be used for this API Client.

    API Clients created using `New-Pfa2ApiClient` are disabled by default. To enable the API Client use the command `Update-Pfa2ApiClient`:
    ```powershell
    Update-Pfa2ApiClient -Array $Array -Name $ClientName -Enabled $true
    ```

    b. If you do not want to use your own key pair, the `New-Pfa2ArrayAuth` command bellow will generate a key pair for you and store it under `%USERPROFILE%\.ssh\`, or Mac/Linux under `~/.ssh/*`. The command will also create the API Client on the FlashArray. Note that, if the API Client already exists, the command will just return the existing client.
    ```powershell
    $ApiClientAuthInfo = New-Pfa2ArrayAuth -Endpoint $ArrayEndpoint -ApiClientName $Clientname -Issuer $ArrayIssuer -Username $ArrayUsername -Password $ArrayPassword -Force
    ```
    Where,
    - `$ArrayEndpoint`    is the FlashArray IP or Name.
    - `$ClientName`       is the unique name for this API Client.
    - `$ArrayIssuer`      is the name of the identity provider that will be issuing ID Tokens for this API client.
    - `$ArrayUsername`    is the FlashArray username.
    - `$ArrayPassword`    is the FlashArray Password (SecureString).

2. **Create OAUTH2 session using the an API client KeyID and ClientID:**
    To create an OAUTH2 session you will need the following information from the API Client: `$clientID`, `$keyId`, and `$privateKeyFile`.
This information can be retrieved from the response of the `New-Pfa2ArrayAuth` command:
    ```powershell
    $clientId =  $ApiClientAuthInfo.PureClientApiClientInfo.clientId
    $keyId =  $ApiClientAuthInfo.PureClientApiClientInfo.KeyId
    $privateKeyFile = $ApiClientAuthInfo.pureCertInfo.privateKeyFile
    ```
    If you used the `New-Pfa2ApiClient` command, `$clientID` and `$keyId` can also be retrieved from the response of the `New-Pfa2ApiClient` command, and `$privateKeyFile` should be your private key file location:
     ```powershell
    $clientId =  $ApiClient.Id
    $keyId =  $ApiClient.KeyId
    ```
    A third option is to use the command `pureapiclient list`, on the Purity//FA CLI, to list all existing API Clients.

    Finally, use the following command to create the OAUTH2 session:
    ```powershell
    $oauth = Connect-Pfa2Array -Endpoint $ArrayEndpoint -Username $ArrayUsername -Issuer $ArrayIssuer -ApiClientName $Clientname -ClientId $clientId -KeyId $keyId -PrivateKeyFile $privateKeyFile -PrivateKeyPassword $privateKeyPassword -IgnoreCertificateError
    ```
    Where,
    - `$ArrayEndpoint`        is the FlashArray IP or Name.
    - `$ArrayUsername`        is the FlashArray username.
    - `$ArrayIssuer`          is the name of the identity provider that will be issuing ID Tokens for this API client.
    - `$ClientName`           is the unique name for this API Client.
    - `$privateKeyPassword`   is required if the private key was generated using a passphrase. If you created the API Client using the `New-Pfa2ArrayAuth` command there is no passphrase. This password should be a SecureString.


    Note: The `Connect-Pfa2Array` cmdlet caches authentication information for the duration of the PowerShell session. With this, subsequent SDK cmdlets do not need to explicitly provide -Array parameter. The cmdlets will retrieve the FlashArray authentication information from PowerShell session variable.

# PowerShell Pipeline
Pure Storage PowerShell SDK 2 supports PowerShell Pipeline starting from 2.x version

## Examples
  * Remove all of the hosts
```powershell
    Get-Pfa2Host -Array $Array | Remove-Pfa2Host -Array $Array
```

  * Remove all of the hosts containing "test" in name
```powershell
    (Get-Pfa2host -Array $Array) | Where-Object {$_.name -like '*test*'} | Remove-Pfa2Host -Array $Array
```

# SSH Passthrough
Using Pure Storage PowerShell SDK 2 cmdlet 'Invoke-Pfa2CLICommand' SSH cli commands can be run on FlashArray.

```powershell
    $Password = ConvertTo-SecureString -String $ArrayPassword -AsPlainText -Force
    $CommandText = "purevol create --size 10G test-volume-name"
    Invoke-Pfa2CLICommand -EndPoint $ArrayEndpoint -Username $ArrayUsername -Password $Password -CommandText $CommandText"
```

# Sorting
See `-Sort` option for the Pure Storage PowerShell SDK 2 cmdlet.

## Examples
  * Sort the list of volumes by name in ascending order
```powershell
    $Result = Get-Pfa2Volume -Array $Array -Sort "name"
```

  * Sort the list of volumes by name in descending order
```powershell
    $Result = Get-Pfa2Volume -Array $Array -Sort "name-"
```

  * Sort the list of volumes by name and then by provisioned
```powershell
    $Result = Get-Pfa2Volume -Array $Array -Sort "name,provisioned"
```

# Limit and Offset
See `-Limit` and `-Offset` options for Pure Storage PowerShell SDK 2 cmdlet

## Examples
  * Get a limited set of volumes from FlashArray defined by `$Limit` (See `-Offset`)
```powershell
    $Volumes = Get-Pfa2Volume -Array $Array -Limit $Limit
```

  * Get all volumes from offset `$Limit` (See `-Limit`)
```powershell
    $RemainingVolumes = Get-Pfa2Volume -Array $Array -Offset $Limit
```

# Filtering (Purity)
Please run `Help About_Pfa2Filtering` from PowerShell terminal

# Logging

## FlashArray Phonehome Logging

By default, PowerShell SDK activity is logged to a log file on the FlashArray is enabled.
To disable this logging, use the `-DisableVerbosePhoneHomeLogging` flag while creating connection to the array (see example below) :
```powershell
    $Array = Connect-Pfa2Array -Endpoint $ArrayName -Credential (Get-Credential) -DisableVerbosePhoneHomeLogging
```

Logs can be found in the array at /var/log/purity/external_rest.log-*


## Local logging

Very detailed logging on the internal and network operations is available in two forms.
1.	For any *-Pfa2 Cmdlet you may add the `-Verbose` option.

Detailed log messages will be output on the PowerShell Verbose stream (stream 4) for this
command.

PowerShell also has Preference Variables that set the default logging level for all cmdlets.
See `$VerbosePreference` in `Get-Help About_Preference_Variables`

2.	You can record detailed logs for all SDK operations to a log file.
Using the `Set-Pfa2Logging` cmdlet you provide a named file for the log to be output to.
Logging stops when you set the `-LogFilename` to empty.

