# aliases
alias aria="aria2c --file-allocation=none -c -x 16 -s 16 -d ~/Downloads"
alias arte="./dotfiles/arte-downloader/arte_downloader.sh"
alias ll="ls -al"
alias o="open ."
alias src="source ~/.bashrc"
alias up="brew update && brew upgrade && brew cask upgrade --greedy"

# bash_completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    . /usr/local/share/bash-completion/bash_completion
fi

# coreutils, curl, sed
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/curl/bin:$PATH"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# python, use pyenv
 export PYENV_ROOT="$HOME/.pyenv"
 export PATH="$PYENV_ROOT/bin:$PATH"
 if command -v pyenv 1>/dev/null 2>&1; then
   eval "$(pyenv init -)"
 fi

# sensible bash
if [ -f ~/dotfiles/bin/sensible.bash ]; then
   source ~/dotfiles/bin/sensible.bash
fi

# bash-powerline
source ~/dotfiles/bin/.bash-powerline.sh

# enable forward search
[[ $- == *i* ]] && stty -ixon

# homebrew, must alawys be the LAST to run 
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
