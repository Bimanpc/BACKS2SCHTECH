<#
.SYNOPSIS
List all properties and values of the Win32_BIOS class in WMI's root/cimv2 namespace

.DESCRIPTION
Version 2021

.PARAMETER Computer
The optional name of a remote computer to be queried.
If not specified, the local computer will be queried.

#>

param( [string]$Computer = "." )

if ( $computer -eq "." ) {
	$instances = Get-CimInstance -ClassName "Win32_BIOS" -Namespace "root/cimv2"
} else {
	$instances = Get-CimInstance -ClassName "Win32_BIOS" -Namespace "root/cimv2" -ComputerName "$Computer"
}

$count = ( $instances | Measure-Object ).Count
if ( $count -eq 1 ) {
	Write-Host "1 instance:"
} else {
	Write-Host "$count instances:"
}
Write-Host

foreach ($objItem in $colItems) {
	write-host "Όνομα                           :" $objItem.Name
	write-host "Έκδοση                        :" $objItem.Version
	write-host "Κατασυαστής                   :" $objItem.Manufacturer
	write-host "SMBIOSBIOS Version             :" $objItem.SMBIOSBIOSVersion
	write-host
}
