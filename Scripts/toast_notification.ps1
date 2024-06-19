# Temporarily set the execution policy to Bypass
$originalExecutionPolicy = Get-ExecutionPolicy
Set-ExecutionPolicy Unrestricted -Scope Process

try {
    # Import BurntToast module
    Import-Module BurntToast

    # Create the toast notification
    New-BurntToastNotification -Text "Email Received", "Please check your inbox."
} catch {
    Write-Error "An error occurred: $_"
} finally {
    # Restore the original execution policy
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy $originalExecutionPolicy -Force
}
