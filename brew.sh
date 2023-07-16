#!/usr/bin/env sh

# Get fonts and FUSE-T
brew tap homebrew/cask-fonts
brew tap macos-fuse-t/homebrew-cask

# Packages
packages=(
    aria2
    bash
    bash-completion
    curl
    coreutils
    findutils
    fuse-t
    fuse-t-sshfs
    gcc
    git
    gnu-sed
    htop
    jq
    openblas
    openssl
    pyenv
    pyenv-virtualenv
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
    cryptomator
    discord
    dropbox
    firefox
    google-chrome
    google-drive
    keka
    librewolf
    mactex
    nvalt
    qbittorent
    qlcolorcode
    qlimagesize
    qlmarkdown
    qlstephen
    quicklook-json
    quicklook-csv
    rstudio
    skim
    slack
    spectacle
    sublime-text
    suspicious-package
    texshop
    vlc
    wezterm
    whatsapp
    windscribe
    zoom
)

# Fonts
fonts=(
    font-ibm-plex
    font-blex-mono-nerd-font
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
pyenv install 3.11.6
pyenv global 3.11.6

pip install pip --upgrade

# Settings for sklearn to work on Apple silicon
export OPENBLAS=$(/opt/homebrew/bin/brew --prefix openblas)
export CFLAGS="-falign-functions=8 ${CFLAGS}"

# Python Packages
python=(
    ipython
    jupyter
    jupyterlab
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
