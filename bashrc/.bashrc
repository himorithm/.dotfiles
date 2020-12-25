#source /etc/profile

export GPG_TTY=$(tty)

export EDITOR=/usr/bin/nvim
export PAGER=/usr/bin/less

#System Commands
alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"
alias suspend="systemctl suspend"
alias suspendh="systemctl suspend-then-hibernate"
alias hibernate="systemctl hibernate"

#Shotcuts
alias notes="cd ~/work/Documents/notes"
alias scripts="cd ~/work/scripts"
alias technotes="cd ~/work/Documents/notes/latex/technotes"
#alias bwork="br ~/work/"
alias blueh="sh ~/work/scripts/blueHeadSet.sh"
alias blues="sh ~/work/scripts/bluestop.sh"
alias site="cd ~/work/site/hugo/intothebasket.com/content/"
alias sitescripts="cd ~/work/site/ssh/"
alias dwmwall="~/work/scripts/dwm_wall.sh"
alias interview="cd ~/work/interview/"
alias work="cd ~/work"
alias code="cd ~/work/code"
alias iknow="cd ~/work/iknow"
alias steamlib="cd ~/media/SteamLibrary/"
alias idea="nohup ~/media/idea-IC-193.6494.35/bin/idea.sh $@ > /dev/null 2>&1 & "
# Git shortcutts 
alias ga="git add ."
alias gc="git commit -m "
alias gp="git push "
alias gs="git status "
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gu="git pull"
alias gf="git fetch"

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias edit='nvim'
alias l.='/usr/bin/ls -d .* --color=auto'
alias ll='/usr/bin/ls --color=auto  -la'
#alias br='br -dp'
alias fvim='vim $(fzf)'
alias groovycode='cd ~/work/code/groovySamples/; fvim '
alias bc='bc -l'

#Editor 
alias vi=nvim
alias vim=nvim
alias v=nvim
alias svi='sudo nvim'
alias vis='nvim "+set si"'
alias edit='nvim'

#Commands 
alias chgwall="feh -rz --bg-fill $HOME/media/Pictures/WallPapers/*"
alias ping='ping -c 5'
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
alias personalbkp="bash ~/work/scripts/backup_mybook.sh"
#alias sysbkp="bash ~/work/scripts/backup_system.sh"
alias mobilebkp="bash ~/work/scripts/adb_backup.sh"
alias music=ncmpcpp
alias lswifi="nmcli conn show"
alias mountbook="~/work/scripts/mount_mybook.sh"
alias godwm="cd ~/work/suckless/dwm"
alias downloads="cd /home/himanshu/media/Downloads/"
alias todo="cd /home/himanshu/work/Documents/todo/"
alias browseimages="feh  -g1920x1080+320+180 --draw-filename --borderless --auto-reload --auto-rotate --scale-down --preload -S filename -B black  -r "
alias youtube-mp3='cd ~/media/Music/; youtube-dl -x --audio-format mp3 --prefer-ffmpeg'
alias sync-mobile-music='bash ~/work/scripts/upload_music.sh'

#Path
PATH=".:$PATH:/home/himanshu/work/scripts:/home/himanshu/idea-IC-193.6494.35/bin"
export PATH 

#Set vi option enable 
set -o vi
export TERM=xterm-256color
export XDG_DESKTOP_DIR="$HOME/"
export XDG_DOWNLOAD_DIR="/home/himanshu/media/Downloads/"
export XDG_TEMPLATES_DIR="$HOME/"
export XDG_PUBLICSHARE_DIR="$HOME/"
export XDG_DOCUMENTS_DIR="/home/himanshu/work/Documents/"
export XDG_MUSIC_DIR="/home/himanshu/media/Music/"
export XDG_PICTURES_DIR="/home/himanshu/media/Pictures/"
export XDG_VIDEOS_DIR="/home/himanshu/media/Videos/"
export XDG_CACHE_HOME="/home/himanshu/work/.cache"
export XDG_DATA_HOME="/home/himanshu/work/.local/share/"
export NNN_BM='n:~/work/Documents/notes/'
export NNN_PLUG='o:fzopen;p:mocplay;d:diffs;v:imgview;t:imgthumb;m:vidthumb'
export NNN_OPENER=xdg-open
#Make Java applications beautiful
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dsun.java2d.opengl=true'
export _JAVA_AWT_WM_NONREPARTENTING=1
export JAVA_HOME=/usr/lib/jvm/default
export GRADLE_USER_HOME="/home/himanshu/work/.gradle"
export M2_REPO="/home/himanshu/work/.m2"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/himanshu/.sdkman"
[[ -s "/home/himanshu/.sdkman/bin/sdkman-init.sh" ]] && source "/home/himanshu/.sdkman/bin/sdkman-init.sh"

eval "$(starship init bash)"
