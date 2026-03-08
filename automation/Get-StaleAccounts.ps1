# Greyfield Industries — Stale Account Report
# Finds users who haven't logged in for 30+ days
# Author: greyfield-admin
# Date: 2026-03-08

$DaysInactive = 30
$InactiveDate = (Get-Date).AddDays(-$DaysInactive)
$ReportPath = "C:\Scripts\StaleAccounts-$(Get-Date -Format 'yyyy-MM-dd').txt"

Write-Output "Greyfield Industries - Stale Account Report" | Out-File $ReportPath
Write-Output "Generated: $(Get-Date)" | Out-File $ReportPath -Append
Write-Output "Threshold: $DaysInactive days inactive" | Out-File $ReportPath -Append
Write-Output "---" | Out-File $ReportPath -Append

Get-ADUser -Filter {LastLogonDate -lt $InactiveDate -and Enabled -eq $true} `
    -Properties LastLogonDate, Department | `
    Select-Object Name, SamAccountName, Department, LastLogonDate | `
    Out-File $ReportPath -Append

Write-Output "Report saved to $ReportPath"