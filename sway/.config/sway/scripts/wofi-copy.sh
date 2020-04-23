#!/usr/bin/env sh
set -euo pipefail
wl-clipboard-history -p "$(wl-clipboard-history -l 20 | wofi  -iIS dmenu | cut -d ',' -f1)" | wl-copy -p
