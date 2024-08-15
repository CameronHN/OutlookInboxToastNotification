# UiPath Outlook email notification

UiPath process that displays a toast notification in Windows when the email account has received an Outlook email.

# Project Status

Unfinsished
Issue: Infinite toast loop when receiving an email

## Use case:

- The user wants to receive email inbox notifications without having to check the application or have the application open in the background.

## Important:

This process makes use of a PowerShell script with the BurntToast module. The following needs to be done prior to executing the process or it will not work.

- BurntToast needs to be installed. https://github.com/Windos/BurntToast?tab=readme-ov-file#install
- Execution Policy needs to be set in PowerShell to unrestricted. https://forum.uipath.com/t/invoke-powershell-scripts-diabled-execution-policy/495929/4
- Run in PowerShell: Set-ExecutionPolicy Unrestricted -Scope Process
