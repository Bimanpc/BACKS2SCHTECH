dnsservers = "192.168.1.1","192.168.1.2"
computers = Get-Content ComputerList.txt
foreach ($comp in $computers)
{

	adapters = gwmi -q "select * from win32_networkadapterconfiguration where ipenabled='true'" -PCName $comp
	foreach ($adapter in $adapters)
	{
		$adapter.setDNSServerSearchOrder($dnsservers)
	}
	
}