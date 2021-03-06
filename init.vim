init.nvim

```
set nocompatible              " required
"filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" para nvim
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" autocomplete for python
Plugin 'maralla/completor.vim'
"Plugin 'davidhalter/jedi-vim'
" autoindent in python
" Plugin 'vim-scripts/indentpython.vim'
" autoindent using pep8
"Plugin 'Vimjas/vim-python-pep8-indent'
" folding
Plugin 'tmhedberg/SimpylFold'
" checks syntax
Plugin 'scrooloose/syntastic'
" checks PEP8
"Plugin 'nvie/vim-flake8'
" git support (commands with capital G)
Plugin 'tpope/vim-fugitive'
" vim-airline (config status bar)
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" vim-scala
Plugin 'derekwyatt/vim-scala'
" awesome-vim-colorschemes
Plugin 'rafi/awesome-vim-colorschemes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set encoding=utf-8
set background=dark
let python_highlight_all=1
syntax on
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~"makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
else
    set expandtab
    set tabstop=4
    set shiftwidth=4
    set textwidth=120
endif
au BufNewFile,BufRead *.py
    \ set softtabstop=4 |
    \ set textwidth=120 |
    \ set autoindent |
    \ set fileformat=unix
set smartindent
" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
:tnoremap <Esc> <C-\><C-n>
" syntastic config
let g:syntastic_python_checkers=["pyflakes", "pep8"]
let g:syntastic_python_pep8_args='--ignore=E501,E225,E731,E265,E125,E128,E402,E201,E202,E226,E211'
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_python_flake8_args="--select=F,C9,N8"
"let g:syntastic_python_pep8_args="--select=F,C9,N8"
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": ["python"],
    \ "passive_filetypes": [] }
"choose status bar theme
let g:airline_theme='jellybeans'
" disable python-mode
let g:pymode_indent = 0
" set statusline
set statusline=%f\ [line=%04l]\[col=%04v][%p%%]\ [LEN=%L]
set laststatus=2
" statusline for syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
" set colorscheme
if has('nvim') || has('termguicolors')
  set termguicolors
endif
colorscheme challenger_deep
" Don't forget set the airline theme as well.
let g:airline_theme='luna'
" Note, the above line is ignored in Neovim 0.1.5 above, use this line instead.
"set termguicolors
"completor
let g:completor_python_binary = '/home/user/conda/bin/python'
" use tab to select completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
" use shift tab to trigger completion
let g:completor_auto_trigger = 0
"inoremap <expr> <Tab> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"
```
