#!/usr/bin/bash
#Authur : Himanshu 
#Date : 20-March-2020
#Simple script to run with Polybar. Can be used independently inside loop
#Execute given action if X session is idle for givent time. 
#This can be used as powersaving if login.config idle time not working if 
# xsession started on seperate VT


exist (){
   for command in "$@"; do
     msg="$command is required to run script. Aborting"
     type "$command" &> /dev/null || { echo $msg >&2; exit 1; }
   done
}

function actions(){
    [[ "$idleRestart" = "true" ]] && { export idleRestart="false"; exit 0; }
   
    notify-send "Suspending Session"
    sleep 5
    #reset Idle Time
    xdotool mousemove_relative 3 3
    #run action
    export idleRestart="true"
    systemctl suspend-then-hibernate
    xdotool mousemove_relative 3 3
}

function status(){
    msgTime=$(($currentIdleMili/$oneMinute)) 
    [ $msgTime -gt 1 ] && echo "|idle $msgTime minutes" || echo "|active"
}

#Check Dependencies
exist xprintidle xdotool systemctl notify-send

#If wait time  not provided set default value 
[[ $1 = *[[:digit:]]* ]] && waitTime=$1 || waitTime=60

oneMinute=60000
#Convert to miliseconds
maxIdleMili=$(($oneMinute * $waitTime))

#Get Idle time from xsession
currentIdleMili=$(xprintidle)

#If idle execute actions or report status
[ $currentIdleMili -gt $maxIdleMili ] && actions 

#Report Status
status

