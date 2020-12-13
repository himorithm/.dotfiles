#source /etc/profile

export EDITOR=/usr/bin/nvim
export PAGER=/usr/bin/less
export NNN_PLUG='o:fzopen;p:mocplay;d:diffs;m:nmount;n:notes;v:imgviu;t:imgthumb'

alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"
alias suspend="systemctl suspend"
alias notes="cd ~/work/Documents/notes"
alias scripts="cd ~/work/scripts"

## Show hidden files ##

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias bc='bc -l'
alias vi=nvim
alias svi='sudo nvim'
alias vis='nvim "+set si"'
alias edit='nvim'
alias l.='/usr/bin/ls -d .* --color=auto'
alias l='/usr/bin/ls --color=auto  -la'
#alias ls='br -dp'


# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
alias personalbkp="bash ~/work/scripts/backup_personal.sh"
alias sysbkp="bash ~/work/scripts/backup_system.sh"
alias mobilebkp="bash ~/work/scripts/backup_mobile.sh"
alias music=ncmpcpp
alias youtube-mp3='cd ~/media/Music/; youtube-dl --ignore-errors --extract-audio --audio-format mp3' 

#Set vi option enable 
set -o vi


#Run Neofetch
#neofetch


#function _update_ps1() {
#	    PS1=$(powerline-shell $?)
#    }

#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#	    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

#source /home/himanshu/.config/broot/launcher/bash/br

#PATH="/home/himanshu/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/home/himanshu/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/home/himanshu/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/himanshu/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/himanshu/perl5"; export PERL_MM_OPT;

~/work/scripts/ufetch.sh

#if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
#then
#	exec fis#h
#fi

#[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/himanshu/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/himanshu/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/himanshu/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/himanshu/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/himanshu/.sdkman"
[[ -s "/home/himanshu/.sdkman/bin/sdkman-init.sh" ]] && source "/home/himanshu/.sdkman/bin/sdkman-init.sh"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
