: This batch file checks for network connection problems
:: and saves the output to a .txt file.
ECHO OFF
:: View network connection details
ipconfig /all >>  results.txt
:: Check if bing.com is reachable
ping bing.com >> results.txt
:: Run a traceroute to check the route to bing.com
tracert bing.com >> results.txt