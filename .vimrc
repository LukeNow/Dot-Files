"" ale fzf nerdtree awesome-vim-colorscheme lightline vim-submode
set runtimepath+=/home/luke/.vim

execute pathogen#infect()
call pathogen#helptags()
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

"""Colors and syntax
syntax on
set nu 
colorscheme nord
filetype plugin indent on
highlight Visual cterm=reverse ctermbg=NONE

""" Fonts spaces and tabs
""set tabs to be width of 4 spaces
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab 
set smarttab
set smartindent
"set cursorline
""autocompletion
set wildmenu
set showmatch
""" Searching 
set incsearch
set hlsearch
""Turn off search higlighting when done searching
nnoremap <leader>n :nohlsearch<CR>


""Paren matching
inoremap { {<CR><CR>}<esc>ki

"s"" Movement
""Switch windows shortcuts
nnoremap <leader>wl <C-w>l
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wh <C-w>h

""virtual line movement
nnoremap k gk
nnoremap j gj

call submode#enter_with('move', 'n', '', '<leader>k', '10k')
call submode#enter_with('move', 'n', '', '<leader>j', '10j')
call submode#map('move', 'n', '', 'k', '10k')
call submode#map('move', 'n', '', 'j', '10j')
call submode#leave_with('move', 'n', '', '<leader>')
""disable submode timeouts  
let g:submode_timeout = 0
""don'th consume submode-leaving key
let g:submode_keep_leaving_key = 1

""create book mark so I can return to it
""set with space-m-[num] and go to with space-[num]
nnoremap <leader>b1 ma
nnoremap <leader>1 'a
nnoremap <leader>b2 mb
nnoremap <leader>2 'b
nnoremap <leader>b3 mc 
nnoremap <leader>3 'c
nnoremap <leader>b4 md 
nnoremap <leader>4 'd
nnoremap <leader>b5 me 
nnoremap <leader>5 'e

""ALE
nnoremap <leader>a :ALEToggle<CR>




"""NERDTREE
""CLOSE vim if nerdtree is only one left
nnoremap <leader>f :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"""COLORIZE
nnoremap <leader>c :ColorToggle<CR>

"""JUMP TO WHERE WE CLOSED FILE
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

set laststatus=2

""CTRL-P
nnoremap <leader>p :CtrlPTag<CR>

""C TAGS
set cscopetag
set tags=./tags,tags;$HOME

nnoremap <leader>] <C-]> 
nnoremap <leader><CR> <C-T>

