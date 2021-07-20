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

