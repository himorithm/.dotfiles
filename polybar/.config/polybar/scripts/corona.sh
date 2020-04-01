#!/usr/bin/sh
curl -s https://corona-stats.online/India\?source\=2 | egrep "India" | tr -d "[:blank:]" |  sed "s/│/:/g"| sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g" | sed "s/▲/^/g" | awk -F: '{print "|GoCoronaGo "$8" - "$4 }' 
