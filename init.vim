" Set leader key
let mapleader = ","

" use Unicode
set encoding=utf-8

" Indent new line on the same line as the preceeding line
set autoindent

" Tab key enters 2 spaces
" To enter a TAB character when `expandtab` is in effect,
" CTRL-v-TAB
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
" Show filenumbers
set number

set termguicolors

lua require('init-plugins')
lua require('theme')
