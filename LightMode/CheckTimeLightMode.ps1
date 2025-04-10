# Get the current time
$currentTime = Get-Date

# Define the start and end times
$startTime1 = Get-Date "7:00 PM"
$endTime1 = Get-Date "12:00 AM"

$startTime2 = Get-Date "12:00 AM"
$endTime2 = Get-Date "6:30 AM"

if (($currentTime -ge $startTime1 -and $currentTime -le $endTime1) -or ($currentTime -ge $startTime2 -and $currentTime -le $endTime2)) {
	Stop-ScheduledTask -TaskPath "\" -TaskName "Automatic_Light_Mode"
}