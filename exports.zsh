if is_linux ; then
  export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin/
fi
if is_macosx ; then
  export PATH=:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin::/Applications/Postgres93.app/Contents/MacOS/bin:$PATH
fi

if is_linux ; then
# Android ADB
export PATH=$PATH:/home/ctcyu/Apps/adt-bundle-linux-x86_64-20131030/sdk/platform-tools
fi
if is_macosx; then
  export PATH=$PATH:/Users/cyu/Apps/android-sdk-macosx/platform-tools/
  export ANDROID_HOME=/usr/local/opt/android-sdk
  export NDK_ROOT=/usr/local/Cellar/android-ndk/r8e/
fi

export TERM="xterm-256color"
#source ~/nvm/nvm.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Colours
LS_COLORS='ow=1;34' ; export LS_COLORS


