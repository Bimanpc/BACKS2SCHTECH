if((Get-Service Spooler).Status -eq "Running"){
Write-Output "Spooler Service is Running"
}
if((Get-Service Spooler).Status -eq "Stopped"){
Write-Output "Spooler Service is Stopped"
}
if((Get-Service Power).Status -eq "Running"){
Write-Output "Power Service runs"
}