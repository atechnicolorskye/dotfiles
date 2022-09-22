#!/usr/bin/env sh

# Get fonts
brew tap homebrew/cask-fonts

# Packages
packages=(
    aria2
    bash
    bash-completion
    curl
    coreutils
    findutils
    gcc
    git
    gnu-sed
    htop
    jq
    openblas
    openssl
    r
    readline
    sqlite3
    tcl-tk
    the_silver_searcher
    tmux
    tree
    wget
    xz
    zlib
)

# Apps
apps=(
    alfred
    appcleaner
    brave-browser
    caprine
    dropbox
    librewolf
    google-chrome
    google-drive
    iterm2
    keka
    nvalt
    qlcolorcode
    qlimagesize
    qlmarkdown
    qlstephen
    quicklook-json
    quicklook-csv
    skim
    slack
    spectacle
    sublime-text
    suspicious-package
    texshop
    vlc
    whatsapp
    Zoom
)

# Fonts
fonts=(
    font-ibm-plex
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing apps..."

# Disable gatekeeper
sudo spctl --master-dis

brew install --appdir="/Applications" ${apps[@]}

# Install packages
echo "Installing packages..."

brew install ${packages[@]}

# Install fonts
brew install ${fonts[@]}

brew doctor

# Setup Python
echo "Setup Python."

# Run pyenv
pyenv install 3.10.6
pyenv global 3.10.6

pip install pip --upgrade

# Settings for sklearn to work on Apple silicon
export OPENBLAS=$(/opt/homebrew/bin/brew --prefix openblas)
export CFLAGS="-falign-functions=8 ${CFLAGS}"

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
pip install ${python[@]}

# Install thefuck
brew install thefuck
