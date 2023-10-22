# Names for tasks
$runMediaTaskName = "RunMediaTask"
$closeMediaTaskName = "CloseMediaPlayerTask"

# Read times from the file
$times = Get-Content -Path .\time.txt

# Convert times to DateTime format for easier handling
$today = Get-Date -Hour 0 -Minute 0 -Second 0
$runMediaTime = $today.Add([TimeSpan]::Parse($times[0]))
$closeMediaTime = $today.Add([TimeSpan]::Parse($times[1]))

# Check and Unregister RunMediaTask if it exists
if (Get-ScheduledTask -TaskName $runMediaTaskName -ErrorAction SilentlyContinue) {
    Unregister-ScheduledTask -TaskName $runMediaTaskName -Confirm:$false
}

# Check and Unregister CloseMediaPlayerTask if it exists
if (Get-ScheduledTask -TaskName $closeMediaTaskName -ErrorAction SilentlyContinue) {
    Unregister-ScheduledTask -TaskName $closeMediaTaskName -Confirm:$false
}

# Define and Register RunMediaTask using the time from the file
$runMediaAction = New-ScheduledTaskAction -Execute 'C:\Users\admin\Desktop\isanka\RunMedia.bat'
$runMediaTrigger = New-ScheduledTaskTrigger -Daily -At $runMediaTime
Register-ScheduledTask -Action $runMediaAction -Trigger $runMediaTrigger -TaskName $runMediaTaskName -Description "Task to run media player"

# Define and Register CloseMediaPlayerTask using the time from the file
$closeMediaAction = New-ScheduledTaskAction -Execute 'C:\Users\admin\Desktop\isanka\CloseMedia.bat'
$closeMediaTrigger = New-ScheduledTaskTrigger -Daily -At $closeMediaTime
Register-ScheduledTask -Action $closeMediaAction -Trigger $closeMediaTrigger -TaskName $closeMediaTaskName -Description "Task to close media player"
