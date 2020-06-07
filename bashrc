## Usefull alias
alias bash_profile='vi ~/.bash_profile && source ~/.bash_profile && echo bash profile sourced'

#ls alisa
alias ls='ls -aF --color=always' # List including hidden files with indicator and color
alias ll='ls -altrh' # Long ls

alias grep='grep --color=auto' # Colorize the grep command output for ease of use (good for log files)##
alias grep="grep -i"  # ignore case

## Vim Alias ##
alias vi=vim
alias svi='sudo vi'
alias Vim="vim `ls -t | head -1`" # Open last modified file in vim

# become root #
alias root='sudo -i'
alias su='sudo -i

# find command
alias findbig="find . -type f -exec ls -s {} \; | sort -n -r | head -5" # Find top 5 big files

# Grep for a bash process
alias psg="ps -aux Â¦ grep bash"

# To clear all the history and screen
alias hcl='history -c; clear'

# Make basic commands interactive, and verbose
alias cp="cp -iv"      # interactive
alias rm="rm -i"      # interactive
alias mv="mv -iv"       # interactive, verbose

# Easy to use aliases for frequently used commands
alias x="exit"

# Clear the screen and list file
alias cls='clear;ls'

# Filesystem diskspace usage
alias dus='df -h'

# To navigate to the different directories
alias ..='cd ..'
alias ...='cd ../..'
