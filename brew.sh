#!/usr/bin/env sh

# Update, upgrade and cleanup
brew update-reset && brew upgrade && brew cleanup

# Tap cask-fonts
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
    htop
    jq
    openblas
    openssl
    pyenv
    gnu-sed
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
    dropbox
    firefox
    google-backup-and-sync
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
    skype
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
    font-ia-writer-mono
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "Installing apps..."

# Disable gatekeeper
sudo spctl --master-dis

brew cask install --appdir="/Applications" ${apps[@]}

# Install packages
echo "Installing packages..."

brew install ${packages[@]}

# Install fonts
brew cask install ${fonts[@]}

brew doctor

# Setup Python
echo "Setup Python."

# Run pyenv
pyenv install 3.7.6
pyenv global 3.7.6

pip install pip --upgrade

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
