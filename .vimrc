set nocompatible              " be iMproved, required
filetype off                  " required

"Custom config
"syntax on
"set encoding=utf-8
"set fileencoding=utf-8
"set number
"set mouse=a
"set splitright
"set splitbelow
"set nofoldenable
"set clipboard^=unnamed
"set backupcopy=yes
"set cmdheight=2
"set updatetime=300
"set shortmess+=c
"set signcolumn=yes

set relativenumber
set nobackup
set nowritebackup
set noswapfile
set number
set mouse=a
set shiftwidth=4
set expandtab
set tabstop=8
set softtabstop=4
set nowrap
set cursorline
set termguicolors
set hidden
set noshowmode
syntax enable
filetype plugin on
set guicursor=n-v-c-sm:ver25-blinkon0,i-ci-ve:ver25,r-cr-o:hor20

map <F11> :tabp<cr> 
map <F12> :tabn<cr>

"Enable true color
if exists('+termguicolors')
	  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
endif

"onedark.vim
"colorscheme onedark
"hi Normal guibg=NONE
"hi Comment guifg=#A9A9A9 gui=italic
"hi CursorLine guibg=#708090 guifg=#FFFFFF
"hi Visual guibg=#708090 guifg=#FFFFFF
"hi CocHighlightText guibg=#708090 guifg=#FFFFFF

" colorscheme darkscene
" set t_Co=256   " This is may or may not needed."
set background=light
colorscheme PaperColor


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'NLKNguyen/papercolor-theme'

" source
" so ~/.vim/plugins.vim

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'


"Plug 'liuchengxu/vista.vim'
Plug 'joshdick/onedark.vim'
"Plug 'tpope/vim-surround'
"Plug '/usr/local/opt/fzf'
"Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
"Plug 'matze/vim-move'
"Plug 'tpope/vim-repeat'
"Plug 'easymotion/vim-easymotion'
Plug 'alvan/vim-closetag'
Plug 'ryanoasis/vim-devicons'

call plug#end()


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
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
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

