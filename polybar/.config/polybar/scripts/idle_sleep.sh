#!/usr/bin/bash
#Authur : Himanshu 
#Date : 20-March-2020

#Set default systemIdle time
if [[ $1 -gt 0 ]]
then
    minutes=$1
else
    minutes=60
fi

one_minute=60000
idle_wait=$(( $one_minute * $minutes ))
idle_current=$(xprintidle)

#Validate if system idle time barrier breached
if [ $idle_current -gt $idle_wait ]
then
    xdotool mousemove_relative 1 1
    systemctl suspend-then-hibernate
    xdotool mousemove_relative 1 1
    echo "|active"
else
    if [ $idle_current -gt $one_minute ] 
    then
        echo "|idle $(($idle_current/$one_minute)) minutes"
    else
        echo "|active"
    fi
fi

