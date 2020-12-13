# Path to your oh-my-zsh installation.
export ZSH="/home/himanshu/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_MAGIC_FUNCTIONS=true
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git archlinux common-aliases z tmux zsh-autosuggestions history-substring-search zsh-syntax-highlighting vim-interaction )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
#Set GPG TTY 
export GPG_TTY=$(tty)



export EDITOR=/usr/bin/nvim
export PAGER=/usr/bin/less



alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"
alias suspendh="systemctl suspend-then-hibernate"
alias suspend="systemctl suspend"
alias hibernate="systemctl hibernate"
alias notes="cd ~/work/notes/"
alias scripts="cd ~/work/scripts"
alias chgwall="feh -rz --bg-fill $HOME/media/Pictures/WallPapers/*"
alias technotes="cd ~/work/Documents/notes/latex/technotes"
alias bwork="br ~/work/"
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
## Show hidden files ##

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias bc='bc -l'
alias vi=nvim
alias vim=nvim
alias svi='sudo nvim'
alias vis='nvim "+set si"'
alias edit='nvim'
alias l.='/usr/bin/ls -d .* --color=auto'
alias ll='/usr/bin/ls --color=auto  -la'
alias br='br -dp'
alias fvim='vim $(fzf)'
alias groovycode='cd ~/work/code/groovySamples/; fvim '


# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
#alias ports='netstat -tulanp'
alias personalbkp="bash ~/work/scripts/backup_mybook.sh"
alias sysbkp="bash ~/work/scripts/backup_system.sh"
alias mobilebkp="bash ~/work/scripts/backup_mobile.sh"
alias music=ncmpcpp
alias lswifi="nmcli conn show"
alias mountbook="~/work/scripts/mount_mybook.sh"
alias godwm="cd ~/work/suckless/dwm"
alias downloads="cd /home/himanshu/media/Downloads/"
alias todo="cd /home/himanshu/work/Documents/todo/"
alias browseimages="feh  -g1920x1080+320+180 --draw-filename --borderless --auto-reload --auto-rotate --scale-down --preload -S filename -B black  -r "
#alias youtube-mp3='cd ~/media/Music/; youtube-dl --ignore-errors --extract-audio --audio-format mp3'

#Set vi option enable
#set -o vi

PATH=".:$PATH:/home/himanshu/work/scripts:/home/himanshu/idea-IC-193.6494.35/bin"
export PATH 
#PATH=".:/home/himanshu/perl5/bin${PATH:+:${PATH}}:/home/himanshu/idea-IC-193.6494.35/bin:/home/himanshu/work/scripts/"; export PATH;
#PERL5LIB="/home/himanshu/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/home/himanshu/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/himanshu/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/himanshu/perl5"; export PERL_MM_OPT;

#Setup Key Bindings


#create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"

# Setup key accordingly
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"      beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"       end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"    overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}" backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"    delete-char
#[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"        up-line-or-history
#[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"      down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"      backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"     forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"    beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"  end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}" reverse-menu-complete

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
    autoload -Uz add-zle-hook-widget
    function zle_application_mode_start { echoti smkx }
    function zle_application_mode_stop { echoti rmkx }
    add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
    add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

#History Search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

bindkey -v
bindkey '^R' history-incremental-search-backward

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

export TERM=xterm-256color

export GRADLE_USER_HOME="/home/himanshu/work/.gradle"
export M2_REPO="/home/himanshu/work/.m2"

export FZF_DEFAULT_COMMAND='find * -type d \(  -path "*/\.*" -o -name "media" -o -name "gamemode" -o -name "elasticsearch" -o -name "native-client" -o -name "idea"  \) -prune -false -o -type f 2>/dev/null'

export STARSHIP_CONFIG=~/.config/starship   
#Zsh vi status line
#function zle-line-init zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    RPS2=$RPS1
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select


#terminfo_down_sc=$terminfo[cud1]$terminfo[cuu1]$terminfo[sc]$terminfo[cud1]
#function zle-line-init zle-keymap-select {
#    PS1_2="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    PS1="%{$terminfo_down_sc$PS1_2$terminfo[rc]%}%~ %# "
#    zle reset-prompt
#}
#preexec () { print -rn -- $terminfo[el]; }



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/himanshu/work/.sdkman"
[[ -s "/home/himanshu/work/.sdkman/bin/sdkman-init.sh" ]] && source "/home/himanshu/work/.sdkman/bin/sdkman-init.sh"

#export NVM_DIR="$HOME/work/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval "$(starship init zsh)"

