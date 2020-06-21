if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

(( ${BASH_VERSINFO[0]} >=4 )) && shopt -s globstar
shopt -s extglob

export EDITOR=vim PAGER=less

# added by travis gem
[ -f /Users/Elethom/.travis/travis.sh ] && source /Users/Elethom/.travis/travis.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

_ps1_ret() { local _r=$?; ((_r)) && printf '%d|' "$_r"; return "$_r"; }
_ps1_git() { local _r=$? br=$(git branch 2>/dev/null | grep '^\* '); printf '%s' "${br/#\* /@}"; return "$_r"; }   
declare -- PS1='$(_ps1_ret)\h:\W$(_ps1_git) \u\$ '
#declare -- PS1='\h::\W$(_ps1_git) \u\$ '

alias px1='all_proxy=socks5://localhost:7891'
alias px2='all_proxy=socks5://localhost:23334'

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
