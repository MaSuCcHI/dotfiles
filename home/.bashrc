# Set aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Set prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;37m\]\w\[\033[00m\]\$ '

# Set environment variables
export PATH="/usr/local/bin:$PATH"
export EDITOR="nano"

# Set command history options
HISTSIZE=10000
HISTFILESIZE=20000
HISTTIMEFORMAT="%Y-%m-%d %T "

# Enable color output for some commands
export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
export LSCOLORS=gxfxcxdxbxegedabagacad

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

