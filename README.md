# dotfiles

Run in the following order:
- Install apps and packages  
`./brew.sh`
- Move bashrc and profile into main folder
`mv .bashrc .profile ../`
- Update macOS settings  
`sudo ./dotfiles/bin/os_settings.sh` 
- Clone and install awesome vimrc  
`git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime`
`sh ~/.vim_runtime/install_awesome_vimrc.sh`
- Switch to latest bash  
Paste /opt/homebrew/bin/bash in /etc/shells, then `chsh -s /opt/homebrew/bin/bash`
- Cleanup  
`sudo ./bin/cleanup.sh`
