#!/usr/bin/env sh

# Update, upgrade and cleanup
brew update && brew upgrade && brew cleanup

# Tap cask-fonts
brew tap homebrew/cask-fonts

# Packages
packages=(
    aria2
    bash
    bash-completion
    coreutils
    findutils
    gcc
    git
    htop
    openblas
    openssl
    pyenv
    sqlite
    the_silver_searcher
    tmux
    tree
    wget
)

# Apps
apps=(
    alfred
    appcleaner
    brave-browser
    caprine
    deluge
    dropbox
    firefox
    google-backup-and-sync
    iterm2
    keka
    mactex
    nvalt
    qlcolorcode
    qlimagesize
    qlmarkdown
    qlstephen
    quicklook-json
    quicklook-csv
    skim
    skype
    slack
    spectacle
    sublime-text
    suspicious-package
    texshop
    vlc
    whatsapp
)


# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing apps..."

brew cask install --appdir="/Applications" ${apps[@]}

# Install packages
echo "Installing packages..."

brew install ${packages[@]}

# Install fonts
brew cask install font-hack font-ibm-plex font-input

brew doctor

# Setup Python
echo "Setup Python."

# Python Packages
python=(
    ipython
    jupyter
    numpy
    matplotlib
    seaborn
    scipy
    sklearn
    tensorflow
    torch
    torchvision
)

echo "Packages to be installed:"
echo ${python[@]}

pyenv
