$MSIPath = ""
$StartApplying = 23
$StopApplying = 6

Do {
    # Get the time
    $currentHourOfDay = (Get-Date).Hour
    if (($currentHourOfDay -gt $StartApplying) -or ($currentHourOfDay -lt $StopApplying)) {
        # Apply profile
    }
} While ($true)