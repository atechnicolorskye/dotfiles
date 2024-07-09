" Show line numbers
set number

" Set to system clipboard to yank and paste across files
set clipboard=unnamed

" Enable termguicolors for base16-vim to work
set termguicolors
" Change colorscheme (git clone https://github.com/chriskempson/base16-vim.git in my_plugins)
colorscheme base16-tomorrow-night-eighties

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
