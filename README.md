# dotfiles

Run in the following order:
- Install apps and packages  
`./brew.sh`
- Update macOS settings  
`sudo ./bin/os_settings.sh` 
- Copy out and install awesome vimrc  
`./.vim_runtime/install_awesome_vimrc.sh`
- Switch to latest bash  
Paste /usr/local/bin/bash in /etc/shells, then `chsh -s /usr/local/bin/bash`
- Cleanup  
`sudo ./bin/cleanup.sh`
