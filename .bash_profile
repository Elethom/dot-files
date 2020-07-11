if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# export http_proxy=http://localhost:23333
# export https_proxy=http://localhost:23333

export JAVA_TOOL_OPTIONS+=" -Djava.net.useSystemProxies=true"

export PATH="/usr/local/opt/gpg-agent/bin:$PATH"
export GPG_TTY=$(tty)
[ -f ~/.gnupg/gpg-agent-info ] && source ~/.gnupg/gpg-agent-info
if [ -S "${GPG_AGENT_INFO%%:*}" ]; then
    export GPG_AGENT_INFO
else
    eval $( gpg-agent --daemon --options ~/.gnupg/gpg-agent.conf )
fi

export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export LDFLAGS+=" -L/usr/local/opt/icu4c/lib"
export CPPFLAGS+=" -I/usr/local/opt/icu4c/include"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS+=" -L/usr/local/opt/ruby/lib"
export CPPFLAGS+=" -I/usr/local/opt/ruby/include"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"

export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS+=" -L/usr/local/opt/sqlite/lib"
export CPPFLAGS+=" -I/usr/local/opt/sqlite/include"

export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS+=" -L/usr/local/opt/gettext/lib"
export CPPFLAGS+=" -I/usr/local/opt/gettext/include"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

export LDFLAGS+=" -L/usr/local/opt/qt/lib"
export CPPFLAGS+=" -I/usr/local/opt/qt/include"
export PKG_CONFIG_PATH+=":/usr/local/opt/qt/lib/pkgconfig"

export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" || : # This loads nvm
