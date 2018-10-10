execute pathogen#infect()
""" Master shortcuts
let mapleader=" "
""We are doing this to train boiz
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
"we are mapping j k and k j that if they were hit simultaously we exit insert
inoremap jk <Esc>
inoremap kj <Esc>
"mapping home key to leader left and end to leader right
nnoremap <leader>h <Home>
nnoremap <leader>l <End>

"""Caolors and syntax
syntax on
set nu 
colorscheme desert
filetype plugin indent on

""" Fonts spaces and tabs
""set tabs to be width of 4 spaces
set tabstop=4
set softtabstop=4 
"set cursorline
""autocompletion
set wildmenu
set showmatch

""" Searching 
set incsearch
set hlsearch
""Turn off search higlighting when done searching
nnoremap <leader>n :nohlsearch<CR>

""" Movement
nnoremap <leader> <PageUp>
""virtual line movement
nnoremap k gk
nnoremap j gj

call submode#enter_with('move', 'n', '', '<leader>k', '10k')
call submode#enter_with('move', 'n', '', '<leader>j', '10j')
"call submode#enter_with('move', 'n', '', '<leader>l', '50k')
"call submode#enter_with('move', 'n', '', '<leader>h', '50j')
call submode#map('move', 'n', '', 'k', '10k')
call submode#map('move', 'n', '', 'j', '10j')
"call submode#map('move', 'n', '', 'l', '50k')
"call submode#map('move', 'n', '', 'h', '50j')
call submode#leave_with('move', 'n', '', '<leader>')
""disable submode timeouts  
let g:submode_timeout = 0
""don'th consume submode-leaving key
let g:submode_keep_leaving_key = 1

""create book mark so I can return to it
""set with space-m-[num] and go to with space-[num]
nnoremap <leader>b1 ma
nnoremap <leader>1	'a
nnoremap <leader>b2 mb
nnoremap <leader>2 'b
nnoremap <leader>b3 mc 
nnoremap <leader>3 'c
nnoremap <leader>b4 md 
nnoremap <leader>4 'd
nnoremap <leader>b5 me 
nnoremap <leader>5 'e
 
