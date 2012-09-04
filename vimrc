"Get rid of vi backwards compat
set nocompatible


" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Using Tabularize plugin to line up stuff
nmap <silent> <leader>t= :Tabularize /=<CR>


" Window Navigation (this isnt working???)
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Hide buffers instead of deleting them
set hidden

set wildmenu
set wildmode=list:longest,full
set wmh=0
filetype plugin on

" Theme
" :colorscheme koehler
:colorscheme vividchalk

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"Relative numbers in the gutter
set relativenumber

"lowercase searches will be insensative
"search with one uppercase will be sensative
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

"Textmate like xhidden charaters
set nolist
set listchars=tab:▸\ ,eol:¬

"Filetype
set filetype=on
filetype plugin on
filetype indent on

set ai
set ts=4
set sts=4
set et
set sw=4
set textwidth=79

" Mappings 
inoremap jj <ESC>

" HTML (tab width 2 chr, no wrapping)
autocmd FileType html set sw=2
autocmd FileType html set ts=2
autocmd FileType html set sts=2
autocmd FileType html set textwidth=0
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Python (tab width 4 chr, wrap at 79th char)
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
autocmd FileType python set textwidth=79
autocmd FileType python set omnifunc=pythoncomplete#Complete

" CSS (tab width 2 chr, wrap at 79th char)
autocmd FileType css set sw=2
autocmd FileType css set ts=2
autocmd FileType css set sts=2
autocmd FileType css set textwidth=79
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" JavaScript (tab width 4 chr, wrap at 79th)
autocmd FileType javascript set sw=4
autocmd FileType javascript set ts=4
autocmd FileType javascript set sts=4
autocmd FileType javascript set textwidth=79
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS



"Leader Key Mapings
map <F2> :NERDTreeToggle<CR>
map <F3> :call NumberToggle()<CR>
nmap <F8> :TagbarToggle<CR>
