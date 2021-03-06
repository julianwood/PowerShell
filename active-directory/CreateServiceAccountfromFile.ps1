Import-Module ActiveDirectory
#Import Text file in .CSV format: SamAccountName,Description,Password
$users = Import-Csv -Path "H:createservice.csv"
$Users | foreach-object { 
$userprinicpalname = $_.SamAccountName + "@domain.com"
New-ADUser -SamAccountName $_.SamAccountName -UserPrincipalName $userprinicpalname -Name $_.SamAccountName -DisplayName $_.SamAccountName -GivenName $_.SamAccountName -Description $_.Description -Path "OU=Service,OU=Accounts,DC=domain,DC=com" -AccountPassword (ConvertTo-SecureString $_.Password -AsPlainText -force) -Enabled $True -PasswordNeverExpires $True -CannotChangePassword $true -PassThru }
