# homebrew
# M-series
eval "$(/opt/homebrew/bin/brew shellenv)"
# Intel
# eval "$(/usr/local/bin/brew shellenv)"


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

# bash_completion
# M-series
if [ -f /opt/homebrew/bin/bash-completion/bash_completion ]; then
    . /opt/homebrew/bin/bash-completion/bash_completion
fi
# Intel
# if [ -f /usr/local/share/bash-completion/bash_completion ]; then
#     . /usr/local/share/bash-completion/bash_completion
# fi

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
 
