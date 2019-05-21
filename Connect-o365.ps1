$UserName = Read-Host "UserName"
$Password = Read-Host "Password" -AsSecureString
$Cred = New-Object System.Management.Automation.PSCredential($UserName,$Password)
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $Cred -Authentication Basic -AllowRedirection 
Import-PSSession $Session 