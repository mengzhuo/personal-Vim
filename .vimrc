call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin on
let g:pydiction_location = '/home/meng/.vim/after/ftplugin/pydiction/complete-dict'

filetype plugin indent on
set autoindent " same level indent
set smartindent " next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set modeline

syntax on                           " syntax highlighing
"colorscheme tango
"filetype on                          " try to detect filetypes
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
set fileformats=unix

set foldmethod=indent
set foldlevel=99

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'rca'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX

"syntax enable
"set background=dark
"colorscheme solarized
let g:snips_author='Meng Zhuo'
let g:solarized_termcolors=256

set number
