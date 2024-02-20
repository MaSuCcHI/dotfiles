# Set aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;37m\]\w\[\033[00m\]\$ '

# Set environment variables
export PATH="/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Set command history options
HISTSIZE=10000
HISTFILESIZE=20000
HISTTIMEFORMAT="%Y-%m-%d %T "

# Enable color output for some commands
export CLICOLOR=1
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
export LSCOLORS=gxfxcxdxbxegedabagacad

