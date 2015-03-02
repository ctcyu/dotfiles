# User specific aliases and functions
if is_linux; then
  alias v='gvim -v'
elif is_macosx; then
  alias v='~/Apps/mvim -v'
fi
alias g='git'
alias ..='cd ..'
alias ll='ls -GFhl'
if is_macosx; then
  alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
	alias mkb='/Applications/Marmalade.app/Contents/s3e/bin/mkb'
	alias edk-build='/Applications/Marmalade.app/Contents/s3e/bin/edk-build'
	alias ionic-ios='reattach-to-user-namespace ionic emulate ios'
  alias fjw='functional-javascript-workshop'
fi
if is_linux; then
  alias vim='nocorrect <git lg> '
  alias win='cd /mnt/sda2/'
  alias windocs='cd /mnt/sda2/Documents\ and\ Settings/Christine/Documents'
  alias cfxstart='cd ~/addon-dev/addon-sdk-1.10; source bin/activate ; cd -'
fi

if is_macosx; then
 alias my_ip='/sbin/ifconfig | less'
elif is_linux; then
  alias my_ip='ip addr show'
fi

alias npm-exec='PATH=$(npm bin):$PATH'

