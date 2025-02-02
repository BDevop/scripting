$TargetDirectory = "C:\Users\JacobPolletta\Downloads"
$MaxAge = 30 # 2 months in days

Get-ChildItem -Path $TargetDirectory -Recurse | Where-Object {
    $_.LastWriteTime -lt (Get-Date).AddDays(-$MaxAge) -and !$_.PSIsContainer
} | Remove-Item -Force