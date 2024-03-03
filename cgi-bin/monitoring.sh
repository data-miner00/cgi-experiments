#!/usr/bin/bash

echo "Content-Type: text/html"
echo ""

echo "<h1>Arch Systems Monitoring</h1>"
echo "Running as $(whoami)"

uptime=$(uptime -p)
memory=$(free -m | awk 'NR==2 { printf "%s / %s (%d%%)", $3, $2, ($3/$2)*100 }')
load=$(cat /proc/loadavg)

echo "<p>Server $uptime!</p>";
echo "<br />"
echo "<h2>Memory information</h2>"
echo "<p>$memory</p>"
echo "<br />"
echo "<h2>Load information</h2>"
echo "<p>$load</p><br />"

echo "<p>End of file<p>"

