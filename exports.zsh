if is_linux ; then
  export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin/
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
  export ANDROID_HOME=/Users/CYu/Android/android-sdk-macosx
  export ANDROID_SDK_ROOT=/Users/CYu/Android/android-sdk-macosx
  #export ANDROID_HOME=/usr/local/opt/android-sdk
  #export NDK_ROOT=/usr/local/Cellar/android-ndk/r8e/
  export NDK_ROOT=/Users/CYu/Android/android-ndk-r10e
  export JAVA_HOME=`/usr/libexec/java_home -v '1.7*'` # use Java 7, for ES
  export PATH=/usr/local/opt/sqlite/bin:$PATH:/usr/local/Cellar/sqlite:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:/usr/local/lib/node_modules/karma/bin:$NDK_ROOT
fi

export TERM="xterm-256color"
#source ~/nvm/nvm.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Colours
LS_COLORS='ow=1;34' ; export LS_COLORS

#default editor
if is_macosx ; then
  export EDITOR='/usr/local/bin/mvim -v'
fi
if is_linux ; then
  export EDITOR='gvim -v'
fi

# elasticsearch
export ES_HEAP_SIZE=10g
export ES_MIN_MEM=10g
export ES_MAX_MEN=10g
