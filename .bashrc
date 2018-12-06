# aliases
alias aria_d="aria2c --file-allocation=none -c -x 16 -s 16 -d ~/Downloads"
alias ll="ls -al"
alias o="open ."
alias src="source ~/.bashrc"

# bash_completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    . /usr/local/share/bash-completion/bash_completion
fi

# coreutils
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/Users/sky/Library/Python/3.6/bini:$PATH"

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
