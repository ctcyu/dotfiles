source ~/dotfiles/oh-my.zsh
source ~/dotfiles/checks.zsh
source ~/dotfiles/functions.zsh
source ~/dotfiles/aliases.zsh
source ~/dotfiles/exports.zsh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

source ~/.bin/tmuxinator.zsh
