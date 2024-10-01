## Force password change for one level OU specified
Get-ADUser -Filter * -SearchScope OneLevel -SearchBase "OU=Test Environment,DC=Domain,DC=Local" | Set-ADUser -ChangePasswordAtLogon $True

## Force password never expires
Get-ADUser -Filter * -SearchBase "OU=Vendors,DC=Domain,DC=Local" | Set-ADUser -PasswordNeverExpires:$FALSE
