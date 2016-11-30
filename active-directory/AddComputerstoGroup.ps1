$Search = "OU=Computers,"
$ADServers = Get-ADComputer -Server DOMAIN -Filter * -SearchBase ($Search + $NewDom)
$ADGroup = Get-ADGroup -Identity "Servers-MSSQL" | Add-ADGroupMember -Members ($ADServers | where {$_.Name.Contains("SQL")})
$ADGroup = Get-ADGroup -Identity "Servers-MSSQL" | Add-ADGroupMember -Members ($ADServers | where {$_.Name.Contains("DB")})
