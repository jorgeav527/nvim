" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" Ctrl + PageUp Working in Ubuntu
nnoremap <C-PageUp> :bnext<CR>
" Ctrl + PageDown Working in Ubuntu
nnoremap <C-PageDown> :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Spell check
map <F5> :setlocal spell! spelllang=en_us<CR>
map <F6> :setlocal spell! spelllang=es_mx<CR>
map <F7> :setlocal spell! spelllang=pt_br<CR>
nmap ? ]s
nmap ¿ [s
nmap = z=


" Mappings to move lines
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up> :m .-2<CR>==
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv
