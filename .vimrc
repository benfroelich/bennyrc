set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype plugin indent on
" allow switching buffers without saving current buffer first
set hidden
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert spaces
set expandtab
syntax on
colorscheme slate
set laststatus=2
" don't close split window when deleting buffer
nmap ,d :b#<bar>bd#<CR>
" mouse control
set mouse=a

set nowrap
" for extra info like hightlighted string length in visual mode
set showcmd

set smartcase

set number

nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP

" enter inserts line after, Shift + Enter inserts line before
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" spell checking
set spelllang=en
set spellfile=$HOME/.vim-spellfile-en.utf-8.add
set backspace=indent,eol,start
set hlsearch
" // to search for visual selection
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
set statusline=%f[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
colorscheme jellybeans
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

