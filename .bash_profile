export PATH=/usr/local/bin:$PATH
export M2_HOME=/usr/local/apache-maven/apache-maven-3.2.2
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$M2:$PATH
export JAVA_HOME=/Library/java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export MYSQL_HOME=/usr/local/mysql-5.6.26-osx10.8-x86_64/bin
export PATH=$MYSQL_HOME:$PATH

eval "$(thefuck-alias)"

alias cdw="c ~/Work"
alias cdd="c ~/Desktop"
alias cdp="c ~/Project"
alias cds="c ~/Study"
alias cddemo="c ~/Demo"
alias cdleetcode="c ~/Study/leetcode"

alias v="open $@ -a macvim"

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."


#personal setting
export PS1="\u@rmbp:\w 🙉  "

tvFunc() {
  #define touch and vim 
  touch $1 && vim $1 
}

alias oldCd=cd
alias oldLs=ls

c() {
  cd $1 && rf
}
l() {
  ls $@ && rf
}


#colors


rf() { 
  idx=$((RANDOM%11))

  arr=(😬 🐶 🐱 🐰 🐒 🐵 🙈 🙉 🙊 🐒 🐔 🐥 🐣 🌝 🎈 👽 😸 )
  face=${arr[idx]}

 #export PS1="\u@rmbp:\w $face "
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  export PS1="\n$RED\u$PURPLE@rmbp:$GREEN\w $face $RESETCOLOR$GREENBOLD\$(git branch 2> /dev/null)\n $YELLOW[\#] → $RESETCOLOR"
  export PS2=" | → $RESETCOLOR"

  #export PS1="\n$RED\u $PURPLE@ $GREEN@rmbp:\w $RESETCOLOR$GREENBOLD\$(git branch 2> /dev/null)\n $BLUE[\#] → $RESETCOLOR"
  #export PS2=" | → $RESETCOLOR"
}
rf

alias tv=tvFunc
alias cd=c
alias ls=l
alias urs=~/Development/urs.sh
alias cors="open -a Google\ Chrome --args --disable-web-security"

alias ico="open https://icomoon.io/app/"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced



