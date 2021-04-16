alias d=cd
alias d.="cd .."
# ls stuffs
eval "$(gdircolors -b)"
alias l="gls -F --color=auto"
alias lr="gls --color=auto -FR"
alias la="gls --color=auto -aF"
alias ll="gls --color=auto -aFl"
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
alias cgbm="carthage bootstrap --platform macOS"
alias cgu="carthage update"
alias cgui="carthage update --platform iOS"
alias cgum="carthage update --platform macOS"

alias clderived="sudo rm -rf ~/Library/Developer/Xcode/DerivedData"
alias xcode-sign="sudo codesign -f -s XcodeSigner /Applications/Xcode.app"

alias heat="yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null & yes > /dev/null &"
alias cool="killall yes"

alias dst="~/Documents/Klei/DoNotStarveTogether/nocmdrun.sh"

alias mefi='sudo diskutil mount $(diskutil list | grep "Container $(df | grep "/$" | grep -o "disk[0-9]")" | grep -o "disk[0-9]s[0-9]$" | cut -b 1-6)1'
alias vefi="vim /Volumes/EFI/EFI/OC/config.plist"
alias kver='ls -1 /Volumes/EFI/EFI/OC/Kexts/*.kext/Contents/Info.plist | while read file; do echo $file | grep -Po "Kexts/\K.*?(?=.kext)"; cat $file | grep -Pzo "(?s)CFBundleVersion.*?<string>\K(.*?)(?=</string>)"; echo; done'
