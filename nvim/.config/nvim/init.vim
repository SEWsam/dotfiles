" Neovim config

" Basic settings
syntax on
set title
set number relativenumber
set tabstop=8 shiftwidth=4 expandtab smarttab autoindent
set nowrap
set mouse=a
set ignorecase
set noshowmode
set showcmd
set hidden

" Keybinds
inoremap jj <ESC>
nnoremap <leader>e :NERDTreeToggle<CR>
map <space> <leader>

" Imports
runtime ./plug.vim

" Appearance
set termguicolors
colorscheme onehalfdark
let g:lightline = {
  \ 'colorscheme': 'onehalfdark',
  \ }

lua << EOF
require("bufferline").setup{}
EOF

" plugin config
let g:ale_linters = {
    \ 'cpp': ['clang'],
    \ 'c': ['clang'],
    \ 'python': ['pylint']
\}

let g:ale_python_auto_pipenv = 1
let g:ale_python_pylint_auto_pipenv = 1

let g:deoplete#enable_at_startup = 1

