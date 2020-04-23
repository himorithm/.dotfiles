#!/usr/bin/env sh
pid=$(ps -eaf | grep "[w]l-clipboard-history -t" | awk '{print $2}')
[ -z "$pid" ] && wl-clipboard-history -t &
