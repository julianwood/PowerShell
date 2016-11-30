Import-Module ActiveDirectory
#Import Text file in .CSV format: cn,sn,name,SamAccountName
$users = Import-Csv "H:createusers.csv" 
#$1user = $Users | Select -First 1
#$Users | Select -First 1 | foreach-object { 
$Users | foreach-object { 
$userprinicpalname = $_.SamAccountName + "@domain.com"
New-ADUser -SamAccountName $_.SamAccountName -UserPrincipalName $userprinicpalname -Name $_.name -DisplayName $_.name -GivenName $_.cn -Description $_.SamAccountName -SurName $_.sn -Path "OU=Admin,OU=Accounts,DC=domain,DC=com" -AccountPassword (ConvertTo-SecureString "Password" -AsPlainText -force) -Enabled $True -PasswordNeverExpires $False -PassThru }
