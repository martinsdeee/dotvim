set nocompatible              			"We want latest vim settings

set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start
let mapleader = ','				        "Replace default leader backslash with comma
let g:mapleader = ','				    "Replace default leader backslash with comma





"----------- Visuals -----------"

colorscheme blackboard

set t_CO=256                            "Terminal colors 256

set guioptions-=e                       "We don't want gui tabs

set number                              "Show line numbers
set linespace=15                        "Linespace 15
set encoding=utf-8                      "Set encoding

"Disable scrollbars and toolbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

set showmode                            "Show what mode currently active
set nowrap                              "Don't wrap lines
set tabstop=4                           "Tabstop 4 spaces
set smarttab
set tags=tags
set softtabstop=4                       "When hit <BS> then pretend like a even it's spaces
set expandtab                           "Expand tabs by default
set shiftwidth=4                        "Number of spaces for autoindent
set shiftround                          "Use multiple shiftspaces when indenting with '<' and '>'
set autoindent                          "Always set autoindenting on
set copyindent                          "Copy previeos indentingon autoindenting
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell                          "Don't bell
set noerrorbells                        "Don't bell
set autowrite                           "Save on buffer switch
set mouse=a





"----------- Split Managament -----------"
set splitbelow
set splitright

"Simplify switching between splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"Create split mapping
nmap vs :vsplit<cr>
nmap sp :split<cr>




"----------- Search -----------"

set hlsearch
set incsearch
set ignorecase
set smartcase





"----------- Mappings -----------"

"Make easy edit my vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Save trigger
nmap <Leader>w :w<cr>

"Turn off search highlight
nmap <leader><space> :nohlsearch<cr>

"Quit, close splits
nmap <Leader>q :q<cr>





"----------- Plugins -----------"

"NERDTree
let NERDTreeHijackNetrw = 0
map <C-B> :NERDTreeToggle<cr>

"CTRLP
map <C-r> :CtrlPBufTag<cr>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|vendor\'





"----------- Auto-Commands -----------"

"Automatically source the Vimrc file on save.
augroup sogroup
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END





"----------- END -----------"
