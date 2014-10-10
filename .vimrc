set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tomasr/molokai'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'fatih/vim-go'
Plugin 'vim-jp/vim-go-extra'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

call vundle#end()

filetype plugin indent on

set autoindent " same level indent
set smartindent " next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set modeline
set hlsearch
set backspace=indent,eol,start
set completeopt=menu,longest,preview

set fileformats=unix
set foldmethod=indent
set foldlevel=99

set relativenumber

highlight Pmenu    guibg=Blue  guifg=White ctermbg=Blue ctermfg=White
highlight PmenuSel guibg=White guifg=Blue ctermbg=White ctermfg=Blue
" Go
set rtp+=$GOROOT/misc/vim
let g:go_bin_path = expand("~/.gotools")
autocmd FileType go autocmd BufWritePre <buffer> Fmt

"ctrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rca'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.svn,.git*,*pyc     " Linux/MacOSX

let g:UltiSnipsSnippetDirectories=["UltiSnips"]

let g:UltiSnipsExpandTrigger="<c-g>"
let g:UltiSnipsJumpForwardTrigger="<c-g>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set encoding=utf-8
let g:solarized_termcolors=256



" Python Checks
let g:syntastic_python_checkers=['pyflakes']

" Airline
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_theme="luna"
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = ' '
let g:bufferline_echo = 0

" Buffer shortcut
map <C-j> :bnext<cr>
map <C-k> :bprevious<cr>
