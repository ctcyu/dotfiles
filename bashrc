# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias v='gvim -v'
alias ..='cd ..'
alias win='cd /mnt/win1/'
alias windocs='cd /mnt/win1/Documents\ and\ Settings/Christine/Documents'
alias cfxstart='cd ~/addon-dev/addon-sdk-1.10; source bin/activate ; cd -'

# Colours
LS_COLORS='ow=1;34' ; export LS_COLORS
