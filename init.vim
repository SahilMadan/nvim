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

lua require('plugins')
lua require('treesitter-setup')
lua require('lsp-setup')
lua require('compe-setup')
lua require('galaxyline-setup')
lua require('gitsigns-setup')
lua require('kommentary-setup')
lua require('barbar-setup')

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fs <cmd>Telescope git_status<cr>
nnoremap <leader>fr <cmd>Telescope treesitter<cr>

" Compe Setup
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

" Example config in VimScript
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Load the colorscheme
colorscheme tokyonight
