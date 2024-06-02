Mailbox Folder or Calendar Access: PowerShell Script

Welcome to ITMolecules. This is a demonstration of the PowerShell script for granting shared access to a Mailbox folder or calendar.

Explanation:

Variables:
- $mailbox: set to the email address of the mailbox for which you want to modify the calendar.
- $user: set to the email address of the user to whom you want to grant access.
- $accessRights: set to "Editor" to define the level of access you want to grant. Access rights can range from "Owner" to "Reviewer" based on the specific requirements.

Connect to Exchange Online:
1. Import-Module ExchangeOnlineManagement: imports the Exchange Online module.
2. Get-Credential: prompts for your Exchange Online admin credentials.
3. Connect-ExchangeOnline: establishes a connection to Exchange Online using the provided credentials.

Grant Calendar Access:
- Add-MailboxFolderPermission: grants the specified access rights to the user's calendar.

Verify Calendar Access:
- Get-MailboxFolderPermission: retrieves the permissions for the calendar.
- Where-Object { $_.User -like $user }: filters the permissions to display only those for the specified user.

Disconnect from Exchange Online:
- Disconnect-ExchangeOnline: closes the session to Exchange Online.

Output the Permissions:
The script outputs the permissions for the specified user to verify that the access was granted correctly.

Note: This script should be run by an administrator who has the necessary permissions to modify mailbox permissions in Exchange Online. As an IT administrator, you play a vital role in managing these permissions, and running this script is part of that responsibility.
