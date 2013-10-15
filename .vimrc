call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

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


set completeopt=menu,longest,preview

set fileformats=unix
set foldmethod=indent
set foldlevel=99

set relativenumber

colorscheme tango
highlight Pmenu    guibg=Blue  guifg=White ctermbg=Blue ctermfg=White
highlight PmenuSel guibg=White guifg=Blue ctermbg=White ctermfg=Blue

"jedi settings
let g:jedi#show_call_signatures = 1
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#completions_command = "<c-n>"

"superTab settings
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']

"UltiSnips
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/vim-snippets/UltiSnips/"

"ctrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rca'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.svn,.git*,*pyc     " Linux/MacOSX


set encoding=utf-8
let g:solarized_termcolors=256
" Python Checks
let g:syntastic_python_checkers=['pyflakes']

" PowerLine
let g:Powerline_symbols = 'fancy'
set laststatus=2

" Buffer shortcut

nmap <C-j> bn
nmap <C-k> bp
