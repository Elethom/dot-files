alias d=cd
alias d.="cd .."
# ls stuffs
eval "$(gdircolors -b)"
alias l="gls -F --color=auto"
alias lr="gls -FR"
alias la="gls -aF"
alias ll="gls -aFl"
alias ls="gls --color=auto"
# ❤️
alias grep="grep --color=auto"

alias df="df -h"
alias du="du -h"

alias ct=cat
alias t=touch
alias gr=grep
alias sd=sed
alias g=git
alias v=vim
alias sv="sudo vim"

alias o=open

alias m="mv -i"
alias md="mkdir -p"
gcp() { a2cp --reflink=auto "$@"; }
alias c="gcp -a -i"
alias cp=gcp
alias r="rm -ir"

alias br=brew
alias cg=carthage
alias cgb="carthage bootstrap"
alias cgbi="carthage bootstrap --platform iOS"
alias cgu="carthage update"
alias cgui="carthage update --platform iOS"

alias clderived="sudo rm -rf ~/Library/Developer/Xcode/DerivedData"
alias xcode-sign="sudo codesign -f -s XcodeSigner /Applications/Xcode.app"

alias heat="yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null &"
alias cool="killall yes"

alias dst="~/Documents/Klei/DoNotStarveTogether/nocmdrun.sh"
