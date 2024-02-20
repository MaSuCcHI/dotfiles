export BASH_SILENCE_DEPRECATION_WARNING=1
ssh-add ~/.ssh/id_rsa < /dev/null
source ~/.bashrc
export IGNOREEOF=5
export EDITOR=vi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/keisuke/tmp/google-cloud-sdk/path.bash.inc' ]; then . '/Users/keisuke/tmp/google-cloud-sdk/path.bash.inc'; fi
