export BASH_SILENCE_DEPRECATION_WARNING=1
ssh-add ~/.ssh/id_rsa < /dev/null

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

source .bashrc

# alias
alias ls='ls -G'
export LSCOLORS=Cxfxcxdxbxegedabagacad

alias l='clear'
alias t='g++ -I ~/sources/atcoder/include main.cpp && oj t'

# export DOCKER_HOST=unix://$HOME/.lima/docker/sock/docker.sock
export IGNOREEOF=5
export EDITOR=vi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/keisuke/tmp/google-cloud-sdk/path.bash.inc' ]; then . '/Users/keisuke/tmp/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/keisuke/tmp/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/keisuke/tmp/google-cloud-sdk/completion.bash.inc'; fi

tmux
tmux source ~/.tmux
