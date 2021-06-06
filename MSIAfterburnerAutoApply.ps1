$MSIPath = ""
$StartApplying = 23
$StopApplying = 6

Do {
    # Get the time
    $currentHourOfDay = (Get-Date).Hour
    if (($currentHourOfDay -gt $StartApplying) -or ($currentHourOfDay -lt $StopApplying)) {
        # Apply profile
        # Execute command
        & "'" + $MSIPath "'" + $MSIProfile
        "Applied"
        Start-Sleep -Seconds 10
    }
} While ($true)