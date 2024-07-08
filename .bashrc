# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# aliases
alias aria="aria2c --file-allocation=none -c -x 16 -s 16 -d ~/Downloads"
alias arte="./dotfiles/arte-downloader/arte_downloader.sh"
alias ll="ls -al"
alias o="open ."
alias src="source ~/.bashrc"
alias up="brew update && brew upgrade --greedy --no-quarantine"

# python, use pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home

# bash_completion
if [ -f /opt/homebrew/bin/bash-completion/bash_completion ]; then
    . /opt/homebrew/bin/bash-completion/bash_completion
fi

# # coreutils, curl, sed
# PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
# PATH="/opt/homebrew/opt/curl/bin:$PATH"
# PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
 
# sensible bash
if [ -f ~/dotfiles/bin/sensible.bash ]; then
   source ~/dotfiles/bin/sensible.bash
fi

# bash-powerline
source ~/dotfiles/bin/.bash-powerline.sh

# enable forward search
[[ $- == *i* ]] && stty -ixon
 
# thefuck
eval $(thefuck --alias)
 
