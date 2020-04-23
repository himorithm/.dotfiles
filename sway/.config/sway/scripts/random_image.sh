#!/bin/sh
[ -d $1 ] &&  find $1 -name "*.jpg" -type f | shuf -n1
