<#
.README
    Get Nested AD Groups for the Current User
#>

Get-ADGroup -LDAPFilter ("(member:1.2.840.113556.1.4.1941:={0})" -f ((Get-ADUser $env:USERNAME).DistinguishedName)) | Select Name | Sort Name
