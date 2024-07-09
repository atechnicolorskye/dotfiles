# dotfiles
 Run in the following order:
 - Install homebrew\
 `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
 - Install git\
 `brew install git`
 - Git clone dotfiles\
 `git clone https://github.com/atechnicolorskye/dotfiles.git`
 - Install apps and packages\
 `./brew.sh`
 - Copy bashrc, bash profile and wezterm configuration into `~/`\
 `cp .bashrc .profile .wezterm.lua ../`
 - Update macOS settings\
 `sudo ./dotfiles/bin/os_settings.sh`
 - Clone and install awesome vimrc\
 `git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime`\
 `sh ~/.vim_runtime/install_awesome_vimrc.sh`
 - Copy personal vim configuration into `~/.vim_runtime`\
 `cp my_config.vim ../.vim_runtime`
 - Switch to latest bash (edit accordingly for Intel Macs)\
 Paste `/opt/homebrew/bin/bash` in `/etc/shells`, then `chsh -s /opt/homebrew/bin/bash`
 - Install Python and Julia\
 `./prog.sh`
 - Cleanup\
 `sudo ./bin/cleanup.sh`
