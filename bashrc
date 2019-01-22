# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#xset -b

#export PYTHONSTARTUP=~/.python/shell.py
#export JAVA_HOME=/usr/lib/jvm/java
export EDITOR=vim

alias grep='grep --color'
alias egrep='egrep --color'
alias tdate='TZ=America/New_York date'
alias discord='screen -d -RR -S discord'
alias ok='{ test $? -eq 0 && echo "Yes"; } || echo "No: $?"'

test -f ~/.lesskey && { test -f ~/.less || lesskey; }

clearHost() {
  for num in $( for arg in $@; do echo $arg; done | sort -rn)
  do
    sed -i "${num}d" /home/${USER}/.ssh/known_hosts
  done
}

pgt() {
  { test -z "$1" && ps -ef --forest ; } || ps -f --forest -g $(ps p $1 -o "%r" --no-header)
}

ks() {
  test "$1" == "-l" && kk && return 0
  WD=$(readlink -f $(pwd))
  printf "\x1b[38;5;11m${WD}:\e[0m\n"
  ls
}

kk() {
  WD=$(readlink -f $(pwd))
  ls -l
  printf "\x1b[38;5;11m${WD}:\e[0m\n"
}

