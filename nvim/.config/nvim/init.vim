call plug#begin('~/.local/share/nvim/plugged')

Plug 'ayu-theme/ayu-vim' " Theme

call plug#end()

let &t_ut=''
set termguicolors
let ayucolor="mirage"
colorscheme ayu
let background="#000000"
set tabstop=4
set shiftwidth=4
set expandtab
