#!/usr/bin/env sh
pgrep mpd > /dev/null || mpd &
