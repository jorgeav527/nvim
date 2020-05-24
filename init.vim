"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" NeoVim by jorgeav527 init.vimrc
"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which-keys.vim
source $HOME/.config/nvim/themes/nordvim.vim
source $HOME/.config/nvim/themes/airline.vim
" source $HOME/.config/nvim/general/paths.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/signify.vim

"    " For automatically restore one file's cursor position and folding.
"    " Status tabline for vim.
"    Plug 'bling/vim-airline'
"    " Gruvbox themes.
"    Plug 'morhetz/gruvbox'
"    " Integrate fzf with Vim.
"    Plug 'junegunn/fzf.vim'
"    " For show the #color in a css file
"    Plug 'ap/vim-css-color'
"    " Automatically clear search highlights after you move your cursor.
"    Plug 'haya14busa/is.vim'
"    " Fast within-file word replacement.
"    Plug 'wincent/scalpel'
"    " Run test suites for various languages. (not for now, for testing).
"    " Plug 'janko/vim-test'
"    " A complement for netrw.
"    Plug 'tpope/vim-vinegar'
"    " Using the . command after a plugin map works well with surround.
"    Plug 'tpope/vim-repeat'

"" Focus Mode
"" """"""""""
"    " Distraction free writing by removing UI elements and centering everything.
"    Plug 'junegunn/goyo.vim'

"" Utils
"" """""
"    " Toggle comments in various ways.
"    Plug 'tpope/vim-commentary'
"    " Surroundings.
"    Plug 'tpope/vim-surround'
"    " For repeat the surround
"    " Plug 'tpope/vim-repeat'
"    " For nice & tabular tables. (works in md too)
"    Plug 'godlygeek/tabular'

"" Git
"" """
"    " A git wrapper.
"    Plug 'tpope/vim-fugitive'
"    " Show git file changes in the gutter.
"    Plug 'mhinz/vim-signify'
"    " Show git files changes in a tree view.
"    Plug 'xuyuanp/nerdtree-git-plugin'

"" FilesTypes
"" """"""""""
"    " An intelligence engine for Conquer of Completion.
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
"    " Providing linting (syntax checking and semantic errors)
"    Plug 'dense-analysis/ale'
"    " A snippets engine depending in the typefile.
"    Plug 'SirVer/ultisnips'
"    " Snippets that work with UtilSnips
"    Plug 'honza/vim-snippets'

"" VimWiki
"" """""""
"    " VimWiki
"    Plug 'vimwiki/vimwiki'
"    " MarkDown preview in the browser.
"    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

"" Latex
"" """""
"    " For PDF reports, books, slides, .documentation.
"    " sudo apt-get install texlive-bibtex-extra
"    " sudo apt-get install latexmk
"    " sudo apt-get install vim-latexsuite
"    " pip3 install --user pynvim neovim-remote
"    Plug 'lervag/vimtex'
"    let g:vimtex_compiler_progname = 'nvr'

"call plug#end()


"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => General Setting
"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    " The Leader Key
"    let maplocalleader="ª"
"    " The Local Leader Key
"    let mapleader="º"

"    " Options
"    set wildignore+=*/vendor,*/node_modules/*,_site,*/__pycache__,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk
"    set autoindent
"    set autoread
"    set noerrorbells " not sounds
"    set encoding=UTF-8
"    set guifont=otf-fira-code
"    set hidden
"    set tabstop=4 softtabstop=4 tabstop=2
"    set shiftwidth=4
"    set expandtab " convert from tab to spaces
"    set smarttab
"    set smartindent
"    set number
"    set relativenumber
"    set numberwidth=5
"    set nowrap
"    set smartcase " case-sensitive searching
"    set noswapfile
"    set nobackup
"    set undodir=~/.vim/undodir
"    set undofile
"    set incsearch
"    set regexpengine=1 " old engine for regex
"    set ruler
"    set scrolloff=3
"    set showcmd
"    set showmatch
"    set showmode
"    set splitbelow
"    set splitright
"    set matchpairs+=<:> " Use % to jump between pairs for HTML <:>.
"    set cmdheight=3 " Give more space for displaying messages.
"    set shortmess+=c " Don't pass messages to ins-completion-menu.
"    set colorcolumn=80
"    set nocompatible
"    syntax on
"    filetype plugin on
"    set nocompatible
"    set whichwrap=b,s,<,>
"    set wildmenu
"    set wildmode=full

"    " Open a new line below an above the current line.
"    nmap g<C-o> o<Esc>k
"    nmap gO O<Esc>j

"    " Spellcheck
"    map <F5> :setlocal spell! spelllang=en_us<CR>
"    map <F6> :setlocal spell! spelllang=es_mx<CR>
"    map <F7> :setlocal spell! spelllang=pt_br<CR>
"    nmap ? ]s
"    nmap ¿ [s
"    nmap = z=

"    " Folding
"    set foldmethod=indent
"    set foldlevelstart=1
"    set viewoptions=cursor,folds,slash,unix
"    nnoremap <space> za
"    autocmd BufRead,BufNewFile *.json,*.css,*.scss,*.less setlocal foldmethod=marker foldmarker={,}
"    " Enable folding
"    set foldlevel=99

"    " Seamlessly treat visual lines as actual lines when moving around.
"    noremap j gj
"    noremap k gk
"    noremap <Down> gj
"    noremap <Up> gk
"    inoremap <Down> <C-o>gj
"    inoremap <Up> <C-o>gk

"    " Write the file la puta q te pario
"    nnoremap zz :update<cr>

"    " Navigate around splits
"    nnoremap <C-l> <C-w><C-l>
"    nnoremap <C-h> <C-w><C-h>
"    nnoremap <C-k> <C-w><C-k>
"    nnoremap <C-j> <C-w><C-j>

"    " Cycle through splits.
"    nnoremap <S-Tab> <C-w>w

"    " Clear search highlights.
"    map <Leader><Space> :let @/=''<CR>

"    " Edit Vim config file in a new tab.
"    map <Leader><F10> :vsplit ~/.vimrc<CR>

"    " Source Vim config file.
"    map <Leader><F9> :source $MYVIMRC<CR>

"    " Mappings to move lines
"    nnoremap <A-Down> :m .+1<CR>==
"    nnoremap <A-Up> :m .-2<CR>==
"    inoremap <A-Down> <Esc>:m .+1<CR>==gi
"    inoremap <A-Up> <Esc>:m .-2<CR>==gi
"    vnoremap <A-Down> :m '>+1<CR>gv=gv
"    vnoremap <A-Up> :m '<-2<CR>gv=gv

"    " Resize current buffer by +/- 5
"    nnoremap <C-left> :vertical resize -5<cr>
"    nnoremap <C-down> :resize +5<cr>
"    nnoremap <C-up> :resize -5<cr>
"    nnoremap <C-right> :vertical resize +5<cr>

"    " Quick pairs
"    imap <leader>' ''<Esc>i
"    imap <leader>" ""<Esc>i
"    imap <leader>( ()<Esc>i
"    imap <leader>[ []<Esc>i
"    imap <leader>{ {}<Esc>i

"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => VimAirline Setup Plug
"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    " Nice >> in the status line
"    " `sudo apt-get install fonts-powerline`
"    " let g:airline_powerline_fonts = 1

"    " Show the Buffer and files in tabs up in the window
"    " let g:airline#extensions#tabline#enabled = 1
"    " let g:airline#extensions#tabline#buffer_nr_show = 1

"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => VinmDiff
"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <leader>d :windo diffthis<CR>
"nnoremap <leader>D :windo diffoff<CR>
"if &diff
"    highlight! link DiffText MatchParen
"endif


"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => VimWiki Setup Plug
"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    " Convert vimwiki files to markdown
"    let g:vimwiki_list = [{'path': '~/vimwiki/',
"                          \ 'syntax': 'markdown', 'ext': '.md'}]


"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Gruvbox Setup Plug
"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    "Set F6 to toggle
"    colorscheme gruvbox
"    let g:focuscolour = 0

"    function! ToggleFocusColor()
"        if (g:focuscolour)
"            colorscheme gruvbox
"            set background=dark
"            let g:focuscolour = 0
"        else
"            colorscheme gruvbox
"            set background=light
"            let g:focuscolour = 1
"        endif
"    endfunc

"    nmap <silent> <F2> :call ToggleFocusColor()<CR>


"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Netrw Setup
"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    " Basic Options
"    augroup ProjectDrawer
"        autocmd!
"        autocmd VimEnter * :Vexplore
"    augroup END
"    let g:netrw_fastbrowse = 2  " Fast moving
"    let g:netrw_banner=1        " banner
"    let g:netrw_winsize = 20    " width in percent
"    let g:netrw_browse_split=4  " open in prior window
"    let g:netrw_altv=1          " open splits to the right
"    let g:netrw_liststyle=3     " tree view

"    " Toggle the Netrw
"    function! ToggleNetrw()
"            let i = bufnr("$")
"            let wasOpen = 0
"            while (i >= 1)
"                if (getbufvar(i, "&filetype") == "netrw")
"                    silent exe "bwipeout " . i
"                    let wasOpen = 1
"                endif
"                let i-=1
"            endwhile
"        if !wasOpen
"            silent Lexplore
"        endif
"    endfunction
"    map <F4> :call ToggleNetrw() <CR>

"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Ale Setup Plug
"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    " Linter available file type
"    let g:ale_linters = {
"    \   'python': ['flake8'],
"    \   'javascript': ['jshint'],
"    \   'tex' : ['chktex'],
"    \}

"    " Fixers available file type
"    let g:ale_fixers = {
"    \   '*': ['remove_trailing_lines', 'trim_whitespace'],
"    \   'javascript': ['eslint'],
"    \   'python': ['black'],
"    \   'tex' : ['chktex'],
"    \}

"    " Set this variable to 1 to fix files when you save them.
"    let g:ale_fix_on_save = 1

"    let g:ale_echo_msg_format = '[%linter%] [%code:%] [%severity%] %s'


"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => CoC Setup Plug
"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:coc_global_extensions = [
"      \ 'coc-vimtex',
"      \]


"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Fzf Setup Plug
"" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    " Cmds for FZF
"    let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'

"    let g:fzf_action = {
"      \ 'ctrl-t': 'tab split',
"      \ 'ctrl-x': 'split',
"      \ 'ctrl-v': 'vsplit',
"      \ 'ctrl-y': {lines -> setreg('*', join(lines, "\n"))}}

"     " Launch fzf with CTRL+P.
"     nnoremap <silent> <C-p> :FZF -m<CR>

"     " Map a few common things to do with FZF.
"     nnoremap <silent> <Leader><Enter> :Buffers<CR>
"     nnoremap <silent> <Leader>l :Lines<CR>


" " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => UtilSnippets & Vim-Snippets Setup Plug
" " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"     " Trigger configuration
"     let g:UltiSnipsExpandTrigger='<tab>'
"     let g:UltiSnipsJumpForwardTrigger='<c-j>'
"     let g:UltiSnipsJumpBackwardTrigger='<c-k>'


" " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Scalpel Setup Plug
" " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <F3> <Plug>(Scalpel)


" " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Signify Setup Plug
" " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set updatetime=100 " default update time 4000ms is not good for async update


" " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Goyo Setup Plug
" " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <Leader>g :Goyo<CR>


" " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " => Vimtex Setup Plug
" " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:vimtex_fold_enabled=1
