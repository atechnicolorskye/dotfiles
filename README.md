# dotfiles

Run in the following order:
- Update macOS settings  
`sudo ./bin/os_settings.sh` 
- Install awesome vimrc  
`./.vim_runtime/install_awesome_vimrc.sh`
- Switch to latest bash  
Paste /usr/local/bin/bash >> /etc/shells, then

```
chsh -s /usr/local/bin/bash
```
- Cleanup  
`sudo ./bin/cleanup.sh`
