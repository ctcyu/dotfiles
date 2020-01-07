if is_linux ; then
  export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin/:/usr/local/opt/openssl/bin
fi
if is_macosx ; then
  export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
  export PATH=:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin::/Applications/Postgres93.app/Contents/MacOS/bin:$PATH
fi

if is_linux ; then
# Android ADB
export PATH=$PATH:/home/ctcyu/Apps/adt-bundle-linux-x86_64-20131030/sdk/platform-tools
fi
if is_macosx; then
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
fi

export TERM="xterm-256color"
#source ~/nvm/nvm.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Colours
LS_COLORS='ow=1;34' ; export LS_COLORS

if is_linux ; then
  export EDITOR='gvim -v'
fi
# Init jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
