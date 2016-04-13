call pathogen#infect()

" Erscheinungsbild
set t_Co=256
colorscheme gruvbox
set background=dark
syntax on
set number
set laststatus=2
set noshowmode

" Mappings
let mapleader = "\<space>"

nnoremap <leader>f gg=G<c-o><c-o>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap - /
nnoremap _ /\c

inoremap jk <esc>
inoremap <esc> <nop>

" NerdTree
map <c-n> :NERDTreeToggle<CR>

" Speichern mit Strg-s
command! -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <Esc>:Update<CR>

" Filetypes
autocmd BufNewFile,BufRead *.hbs set filetype=html

set expandtab shiftwidth=2 softtabstop=2
set path=$PWD/**

filetype indent plugin on
