# Get the current time
$currentTime = Get-Date

# Define the start and end times
$startTime = Get-Date "6:30 AM"
$endTime = Get-Date "7:00 PM"

if ($currentTime -ge $startTime -and $currentTime -le $endTime) {
	Stop-ScheduledTask -TaskPath "\" -TaskName "Automatic_Dark_Mode"
}