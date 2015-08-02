source ~/dotfiles/oh-my.zsh
source ~/dotfiles/checks.zsh
source ~/dotfiles/functions.zsh
source ~/dotfiles/aliases.zsh
source ~/dotfiles/exports.zsh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

###-tns-completion-start-###
if [ -f /Users/CYu/.tnsrc ]; then 
    source /Users/CYu/.tnsrc 
fi
###-tns-completion-end-###
