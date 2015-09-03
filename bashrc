#Set what the command prompt looks like
color_bright_red='\[\e[1;31m\]'
color_reset='\[\e[0m\]'
export PS1=${color_bright_red}'\w: '${color_reset}

#Append locations to the path
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:\
/usr/texbin:/Users/SamuelWenninger/bash-scripts

#Vi like navigation of the command line
set -o vi

#Autofix switched letters/misspellings
shopt -s cdspell

#Append to .bash_history when closing a session, rather than overwriting it
shopt -s histappend

#Multi-line commands appear as a single line in .bash_history
shopt -s cmdhist

#Update columns and rows if windows size changes
shopt -s checkwinsize

#Do not list suggestions if I try to tab complete an empty line
shopt -s no_empty_cmd_completion

#Allow a larger number of .bash_history entries
export HISTSIZE=1000000

#Allow a larger .bash_history file size
export HISTFILESIZE=1000000

#Don't add commands starting with a space or repeated commands to .bash_history
export HISTCONTROL=ignoreboth

#Record timestamps in .bash_history
export HISTTIMEFORMAT='%F %T '

#Immediately record history to .bash_history, rather than after a session ends
export PROMT_COMMAND='history -a'

#Change the default behavior of 'ls'. Standard 'ls' can be used by doing '\ls'
#'-F': distinguishes between directories, files, executables, etc.
#'-A': show all hidden files except '..' and '.'
#'-h': shows files sizes in human readable format when '-l' is used
alias ls='ls -FAh'

#Shorter clear command call
alias c=clear

#Human readable display free disk space
alias df='df -h'

#Make sure that Vim is always used rather than Vi
alias vi='vim'

#Copy is recursive, preserves ownership/dates/etc, interactive, and verbose
alias cp='cp -rpiv'

#Remove is interactive and verbose to prevent deleting things unintentionally
alias rm='rm -iv'

#Move is interactive and verbose to prevent unintentional overwrites
alias mv='mv -iv'
