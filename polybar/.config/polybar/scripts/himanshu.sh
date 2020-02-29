#!/usr/bin/bash

output=$(nmcli con show --active | awk '!/NAME/ { print $1 }')
echo "$output"
