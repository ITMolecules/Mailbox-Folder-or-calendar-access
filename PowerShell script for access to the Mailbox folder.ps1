#PowerShell script for access to the Mailbox folder\calendar
# Define variables
$mailbox = "Itmolecules@education.com"
$user = "student1@education.com"
$accessRights = "Editor"

#This script is used to share mailbox folder access with a user. 
#I recommend downloading and saving this command to a location such as C:\Temp and running it from there. 
#Please ensure to enter the variables: mailbox address and user you want to share the folder or calendar access with.

# Connect to Exchange Online
Import-Module ExchangeOnlineManagement
$UserCredential = Get-Credential
Connect-ExchangeOnline -UserPrincipalName $UserCredential.UserName -Password $UserCredential.Password

# Grant calendar access
Add-MailboxFolderPermission -Identity "$mailbox:\Calendar" -User $user -AccessRights $accessRights

# Verify calendar access
$permissions = Get-MailboxFolderPermission -Identity "$mailbox:\Calendar"

# Disconnect from Exchange Online
Disconnect-ExchangeOnline -Confirm:$false

# Output the permissions to verify
$permissions | Where-Object { $_.User -like $user }
