# Check if the OS is Linux
# @return 0 if the OS is Linux
is_linux() { return $([ `uname -s` = Linux ]); }

# Check if the OS is Mac OS X
# @return 0 if the OS is Mac OS X
is_macosx() { return $([ `uname -s` = Darwin ]); }
