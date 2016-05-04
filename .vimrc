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
set timeout timeoutlen=400 ttimeoutlen=200
set visualbell                          "Don't bell
set noerrorbells                        "Don't bell
set autowriteall                        "Automatically save file when switching buffers
set mouse=a

"Make split disappear
hi vertsplit guifg=bg guibg=bg

"Autocomplete
set complete=.,w,b,u                    "Set autocomplete       





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

"Easy reachable escape
imap jj <esc>

"Give random colorscheme
nmap <Leader>r :colorscheme random<cr>:colorscheme<cr>

"Find tag
nmap <Leader>f :tag<space>

"Ctags Reload
nmap <Leader>c :!ctags -R --exclude=node_modules --exclude=vendor<cr>

"PHPDocumentator
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<CR>




"----------- Plugins -----------"

"NERDTree
let NERDTreeHijackNetrw = 0
map <C-k><C-b> :NERDTreeToggle<cr>

"CTRLP
map <C-r> :CtrlPBufTag<cr>
let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|git'

"vim-php-namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

"vim-php-cs-fixer
let g:php_cs_fixer_level = "psr2"
nnoremap <Leader><Leader>b :call PhpCsFixerFixFile()<CR>

"UltiSnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
nmap <Leader>es :UltiSnipsEdit




"----------- Auto-Commands -----------"

"Automatically source the Vimrc file on save.
augroup sogroup
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END





"----------- Laravel Specific -----------"

nmap <Leader>lr :e app/Http/routes.php<cr>
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :e app/<cr>
nmap <Leader><Leader>v :e resources/views/<cr>





"----------- Notes & Tips -----------"

" - Press ',ev' to edit .vimrc
" - Press ',w' to save file
" - Press ',q' to quit or close split
" - Press 'yy' to copy all line
" - Press 'zz' to center a line
" - Press ',c' to refresh all ctags or create new ctags file
" - Press '<C-]>' to go defined function in class (Ctags)
" - Press 'gg' to go file top
" - Press 'G' to go file bottom
" - Press ',,b' to trigger prefixer
" - Press ',d' to make function documentation comment
" - Press '<C-n>' multiple cursor select




"----------- END -----------"
