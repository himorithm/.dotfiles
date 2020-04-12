#!/bin/sh

tempFiles='/tmp'
archupd='arch-upd.tmp'
coronaupd='corona.tmp'
archupdFile="$tempFiles/$archupd"
coronaFile="$tempFiles/$coronaupd"
updates=""
gocorona=""


#Arch Updates
[ -f $archupdFile ] && [ `stat --format=%Y $archupdFile` -gt $(( `date +%s` - 1800 )) ] && updates=$(cat $archupdFile)  

if [ -z "$updates" ]; then
    if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
        updates_arch=0
    fi

    if ! updates_aur=$(yay -Qum 2> /dev/null | wc -l); then
        updates_aur=0
    fi

    updates=$(("$updates_arch" + "$updates_aur"))
    echo $updates > $archupdFile
    if [ "$updates" -gt 0 ]; then
        notify-send "$updates  Avilable"
    fi
fi

#Corona Updates
[ -f $coronaFile ] && [ `stat --format=%Y $coronaFile` -gt $(( `date +%s` - 7200 )) ] && gocorona=$(cat $coronaFile)  

if [ -z "$gocorona" ]; then
    gocorona=$(curl -s https://corona-stats.online/India\?source\=2 | egrep "India" | tr -d "[:blank:]" |  sed "s/│/:/g"| sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g" | sed "s/▲/^/g" | awk -F: '{print "|GoCoronaGo "$8" - "$4 }' )
    echo $gocorona > $coronaFile
fi


print_volume() {
	volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
	if test "$volume" -gt 0
	then
		echo -e "${volume} "
	else
		echo -e " "
	fi
}

memfree=$(($(grep -m1 'MemAvailable:' /proc/meminfo | awk '{print $2}') /1024/1024))Gb 
wifi=$(nmcli connection show --active | awk '/wifi/{print $1}') 
temp=$(head -c 2  /sys/devices/pci0000:00/0000:00:01.1/0000:01:00.0/hwmon/hwmon0/temp1_input)C 
echo  $gocorona' |'$(uptime -p)' |'$(print_volume)'|'$wifi' |'$updates' |'$temp' |'$memfree' |'$(date +'%l:%M:%S %p %Y-%m-%d') 
