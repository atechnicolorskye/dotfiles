set runtimepath+=~/.vim_runtime

" ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
\   'python':['flake8'],
\}
let g:ale_python_flake8_args = '--ignore=E501,E702,F401'

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
