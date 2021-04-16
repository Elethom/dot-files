if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

(( ${BASH_VERSINFO[0]} >=4 )) && shopt -s globstar
shopt -s extglob

export EDITOR=vim PAGER=less

# added by travis gem
[ -f /Users/Elethom/.travis/travis.sh ] && source /Users/Elethom/.travis/travis.sh

if type brew &>/dev/null; then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
      [[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
fi

GIT_PS1_SHOWCOLORHINTS=1
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.config/git-prompt.sh ] && source ~/.config/git-prompt.sh || __git_ps1(){ return $?; }

_ps1_ret() { local _r=$?; ((_r)) && printf '%d|' "$_r"; return "$_r"; }
declare -- PS1='$(_ps1_ret)\h:\W$(__git_ps1 " (%s)") \u\$ '
#declare -- PS1='\h::\W$(_ps1_git) \u\$ '

alias pxn='all_proxy='

make_bare() {
    if [[ ! -d $1/.git ]]; then
        echo "$1 Not git" >&2
        return 1
    fi
    mv "$1/.git" "$1.git"
    pushd "$1.git"
    git config --bool core.bare true
    popd
    rm -r "$1"
}

rcify(){
    mv -- "$1" ~/Github/dot-files/"$1"
    ln -sf -- ~/Github/dot-files/"$1" "$1"
}

java_fx() {
    java --module-path /Library/Java/JavaVirtualMachines/jdk-14.jdk/Contents/Home/lib/javafx --add-modules ALL-MODULE-PATH "$@"
}

mca() {
    java_fx -jar ~/Downloads/Safari/mcaselector-1.12.jar "$@";
}
