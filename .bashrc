# aliases
alias aria_d="aria2c --file-allocation=none -c -x 16 -s 16 -d ~/Downloads"
alias ll="ls -al"
alias o="open ."
alias src="source ~/.bashrc"
alias up="brew cask upgrade --greedy"

# bash_completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    . /usr/local/share/bash-completion/bash_completion
fi

# coreutils
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# python, use pyenv
 export PYENV_ROOT="$HOME/.pyenv"
 export PATH="$PYENV_ROOT/bin:$PATH"
 if command -v pyenv 1>/dev/null 2>&1; then
   eval "$(pyenv init -)"
 fi

# sensible bash
if [ -f ~/bin/sensible.bash ]; then
   source ~/bin/sensible.bash
fi

# bash-powerline
source ~/dotfiles/bin/.bash-powerline.sh

# enable forward search
[[ $- == *i* ]] && stty -ixon

# homebrew, must alawys be the LAST to run 
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
