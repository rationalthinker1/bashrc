## Colorize the ls output ##
alias ls='ls --color=auto'

## Use a long listing format ##
alias l="ls --color=auto -lh --group-directories-first" # List all, with human readable filesizes
alias ll="ls --color=auto -lah --group-directories-first" # List all, with human readable filesizes
alias llt="ls --color=auto -lahFtr --group-directories-first" # Same as above, but ordered by date
alias lls="ls --color=auto -lahFSr --group-directories-first" # Same as above, but ordered by size

## Show hidden files ##
alias l.='ls -d .* --color=auto'

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias r='cd /'
alias c="clear" # Typing the whole word is annoying
alias h="cd ~/" # Go home

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Create parent dirs if they don't exist
alias mkdir='mkdir -pv'

# Repeat the previous command with sudo
alias pls='sudo !!'

# Quickly edit this script and load it
alias vpr='vim ~/.bashrc && source ~/.bashrc'

# sshfs with proper default settings
alias sshfs='sshfs -o allow_other,uid=1000,gid=1000'

# Hiberate
alias hiberate='sudo pm-suspend'

# Show processes by name
# example: psg bash
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'

# Append -c to continue the download in case of problems
alias wget='wget -c'

# Prints out your public IP
alias myip="curl http://ipecho.net/plain; echo"

# Searches up history commands
alias hgrep="history | grep"

# Extract archives files
function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.xz)    tar xvJf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}


#=======================================================================================
# Installing, updating or removing applications aliases and functions
#=======================================================================================
alias addrepo='sudo add-apt-repository -y'
alias install='sudo apt-get install -y '
alias remove='sudo apt-get remove'
alias update='sudo apt-get update -y'
alias upgrade='sudo apt-get update && sudo apt-get upgrade'

#=======================================================================================
# Git Aliases and functions
#=======================================================================================
function c { git checkout $@; }
function b { git branch $@; }
alias gcam="git commit -a --amend"
alias gc="git commit -am"
alias gs="git status"
alias gd="git diff --ignore-all-space"
alias dc="git diff --cached"
alias dv="git diff | vim -"
alias gl="git log"
alias gp="git pull"
alias gpu="git push"
alias gpuf="git push --force"

git_reset() {
    COMMIT="HEAD"
    if [[ "$#" -eq 1 ]];
    then
        COMMIT="HEAD~$1"
    fi
    git reset --hard "${COMMIT}" 
}
alias gre=git_reset

#=======================================================================================
# Vagrant Aliases and functions
#=======================================================================================
alias v='vagrant version && vagrant global-status'
alias vst='vagrant status'
alias vup='vagrant up'
alias vdo='vagrant halt'
alias vssh='vagrant ssh'
alias vkill='vagrant destroy'

#=======================================================================================
# Laravel Aliases and functions
#=======================================================================================
alias pa="php artisan"
alias par="php artisan routes"
alias pam="php artisan migrate"
alias pam:r="php artisan migrate:refresh"
alias pam:roll="php artisan migrate:rollback"
alias pam:rs="php artisan migrate:refresh --seed"
alias pda="php artisan dumpautoload"
alias cu="composer update"
alias ci="composer install"
alias cda="composer dump-autoload -o"

#=======================================================================================
# Nginx Aliases and functions
#=======================================================================================
alias ncon="cd /etc/nginx/sites-available/"
alias nerr="cd /var/log/nginx/"
# Reload Nginx Configuration
alias nreload="sudo nginx -s reload"

#=======================================================================================
# Apache Aliases and functions
#=======================================================================================
# Easy access to Apache logs
alias acon="cd /etc/apache2/sites-available/"
alias aerr="cd /var/log/apache2/"
# Restart Apache
alias areload='sudo service apache2 restart'
alias he='tail -n 100 -f /var/log/apache2/error.log'
alias ha='tail -n 100 -f /var/log/apache2/access.log'
alias hr='tail -n 100 -f /var/log/apache2/rewrite.log'

#=======================================================================================
# Node Aliases and functions
#=======================================================================================
alias npm='sudo npm'
