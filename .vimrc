set nocompatible              			"We want latest vim settings

set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start
let mapleader = ','				"Replace default leader backslash with comma





"----------- Visuals -----------"

colorscheme brogrammer

set t_CO=256

"Set font
set guifont=Courier_New:h12
set number
set linespace=7

"Disable scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R





"----------- Search -----------"

set hlsearch
set incsearch
set ignorecase





"----------- Mappings -----------"

"Make easy edit my vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Save trigger
nmap <Leader>w :w<cr>

"Turn off search highlight
nmap <leader><space> :nohlsearch<cr>





"----------- Auto-Commands -----------"

"Automatically source the Vimrc file on save.
augroup sogroup
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END





"----------- END -----------"
