call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on                           " syntax highlighing
filetype on
filetype plugin on
filetype plugin indent on

set autoindent " same level indent
set smartindent " next level indent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set modeline
set hlsearch

set completeopt=menuone,longest,preview
set fileformats=unix
set foldmethod=indent
set foldlevel=99

set number

colorscheme tango
highlight Pmenu    guibg=Blue  guifg=White ctermbg=Blue ctermfg=White
highlight PmenuSel guibg=White guifg=Blue ctermbg=White ctermfg=Blue

"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"jedi settings
let g:jedi#show_function_definition = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#autocompletion_command = "<c-n>"

"superTab settings
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"


"ctrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rca'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.svn,.git*     " Linux/MacOSX

let g:snips_author='Meng Zhuo'
let g:solarized_termcolors=256
