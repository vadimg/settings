export CLICOLOR=1
export LSCOLORS=ExgxfxDxcxegedabagacad
export TERM='xterm-256color'
export PS1='\u@\h:\W$ '
alias vi='mvim -v'

# MacPorts Installer addition on 2012-07-22_at_11:29:43: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

export PATH=$PATH:/Users/vadim/workspace/chartbeat/external/vmutils
export PATH=$PATH:/Users/vadim/bin
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# go
export GOPATH=$HOME/workspace/go
export PATH=$PATH:$GOPATH/bin
