# dotfiles

Run in the following order:
- Update macOS settings  
`sudo ./bin/os_settings.sh` 
- Install awesome vimrc  
`./.vim_runtime/install_awesome_vimrc.sh`
- Switch to latest bash  
<<<<<<< HEAD
```
sudo -s echo /usr/local/bin/bash >> /etc/shells 
chsh -s /usr/local/bin/bash
```
=======
Paste /usr/local/bin/bash in /etc/shells, then `chsh -s /usr/local/bin/bash`
>>>>>>> 3fbcf721f88f8e72c66d7d1a1cd6a0b46c8a8df6
- Cleanup  
`sudo ./bin/cleanup.sh`
