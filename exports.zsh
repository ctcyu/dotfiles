if is_linux ; then
  export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin/
fi
if is_macosx ; then
  export PATH=:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin::/Applications/Postgres93.app/Contents/MacOS/bin/:$PATH
fi

if is_macosx ; then
# Android ADB
export PATH=$PATH:/home/ctcyu/android-sdk-linux/platform-tools/
fi

export TERM="xterm-256color"
#source ~/nvm/nvm.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Colours
LS_COLORS='ow=1;34' ; export LS_COLORS


