#In this script, we first get the current date and time using the Get-Date cmdlet.
#We then get the day of the week using the DayOfWeek property of the DateTime object.

#Next, we define the start and end times of our business hours as strings in the format "HH:mm:ss".
#We then use the ParseExact method of the DateTime class to convert these strings to DateTime objects.

#Finally, we use an if statement to check if the current day of the week is Monday through Friday,
#and if the current time is between the start and end times of our business hours.

$now = Get-Date
$dayOfWeek = $now.DayOfWeek
$businessHoursStart = "08:00:00"
$businessHoursEnd = "17:00:00"
$businessHoursStartDateTime = [DateTime]::ParseExact($businessHoursStart, "HH:mm:ss", $null)
$businessHoursEndDateTime = [DateTime]::ParseExact($businessHoursEnd, "HH:mm:ss", $null)

if ($dayOfWeek -ge "Monday" -and $dayOfWeek -le "Friday" -and $now.TimeOfDay -ge $businessHoursStartDateTime.TimeOfDay -and $now.TimeOfDay -le $businessHoursEndDateTime.TimeOfDay) {
    $isOutOfBusinessHours= "false"
} else {
    $isOutOfBusinessHours= "true"
}
