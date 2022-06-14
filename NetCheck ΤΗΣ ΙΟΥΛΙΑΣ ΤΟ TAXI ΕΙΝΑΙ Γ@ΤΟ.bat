// This batch  checks for net connection problems.
ECHO OFF

// View network connection details
IPCONFIG /all

// Check if bing.com is reachable
PING bing.com

// Run a traceroute to check the route to bing.com
TRACERT bing.com

PAUSE