joinpdf(){
  gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=finished.pdf $@ ;
}

function extract {
  echo Extracting $1 ...
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xjf $1  ;;
          *.tar.gz)    tar xzf $1  ;;
          *.bz2)       bunzip2 $1  ;;
          *.rar)       unrar x $1    ;;
          *.gz)        gunzip $1   ;;
          *.tar)       tar xf $1   ;;
          *.tbz2)      tar xjf $1  ;;
          *.tgz)       tar xzf $1  ;;
          *.zip)       unzip $1   ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1  ;;
          *)        echo "'$1' cannot be extracted via extract()" ;;
      esac
  else
      echo "'$1' is not a valid file"
  fi
}

function pg_start {
	if is_linux; then
		/usr/local/bin/pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
	elif is_macosx; then
		open -a Postgres93.app
	fi
}

function pg_stop {
  /usr/local/bin/pg_ctl -D /usr/local/var/postgres stop -s -m fast
}

function mysql_start {
  mysql.server start
}

function mysql_stop {
  mysql.server stop
}

function ss {
  if [ -e script/server ]; then
    script/server $@
  else
    script/rails server $@
  fi
}

function sc {
  if [ -e script/rails ]; then
    script/rails console $@
  else
    script/console $@
  fi
}

# -------------------------------------------------------------------
# display a neatly formatted path
# -------------------------------------------------------------------
path() {
echo $PATH | tr ":" "\n" | \
awk "{ sub(\"/usr\", \"$fg_no_bold[green]/usr$reset_color\"); \
sub(\"/bin\", \"$fg_no_bold[blue]/bin$reset_color\"); \
sub(\"/opt\", \"$fg_no_bold[cyan]/opt$reset_color\"); \
sub(\"/sbin\", \"$fg_no_bold[magenta]/sbin$reset_color\"); \
sub(\"/local\", \"$fg_no_bold[yellow]/local$reset_color\"); \
print }"
}

# -------------------------------------------------------------------
# any function from http://onethingwell.org/post/14669173541/any
# search for running processes
# ------------------------------------------------------------------- 
any() {
    emulate -L zsh
    unsetopt KSH_ARRAYS
    if [[ -z "$1" ]] ; then
        echo "any - grep for process(es) by keyword" >&2
        echo "Usage: any " >&2 ; return 1
    else
        ps xauwww | grep -i --color=auto "[${1[1]}]${1[2,-1]}"
    fi
}

pngcrushdir() {
  ls *.png | while read line; do pngcrush -brute $line compressed/$line; done
}

