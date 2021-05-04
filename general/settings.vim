"" Global
syntax enable                           " Enables syntax highlighing
set nocompatible                        " for wiki
set scrolloff=3                         " Set 3 lines to scrolloff
set mouse=a                             " Enable your mouse
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set shortmess+=c                        " Don't pass messages to ins-completion-menu (coc)
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set hidden                              " Required to keep multiple buffers open multiple buffers
set splitright                          " Vertical splits will automatically be to the right
set splitbelow                          " Horizontal splits will automatically be below
set ignorecase                          " Search uppercase and lowerCase
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed 
set fileencoding=utf-8                  " The encoding written to file
set clipboard=unnamedplus               " Copy paste between vim and everything else
set regexpengine=1                      " Old engine for regex
set laststatus=2                        " Always display the status line
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs 
set pumheight=10                        " Makes popup menu smaller
set ruler                               " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set termguicolors                       " Use guifg/guibg instead of ctermfg/ctermbg in terminal
set t_Co=256                            " Support 256 colors
"" Buffer
set fileformat=unix                     " Common on most UNIX based operating systems
set tabstop=4                           " Insert 4 spaces for a tab
set softtabstop=4
set shiftwidth=4
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set noswapfile                          " Don't create root-owned files
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set matchpairs+=<:>                     " Use % to jump between pairs for HTML <:>.
set cursorline                          " Enable highlighting of the current line
set list                                " Show whitespace
set iskeyword+=-                        " treat dash separated words as a word text object
"" Window
set number                              " Line numbers
set relativenumber                      " Line relativenumbers
set numberwidth=5                       " The width of the line numbers and relativenumbers
set foldmethod=indent                   " Foldmethod indent
set foldlevel=1                         " End fold indent at 99
set foldnestmax=10                      " Fold indent start at one  
" set autochdir                           " Your working directory will always be the same as your working directory
set colorcolumn=80                      " Show in the screem where is 80 characteres
set conceallevel=0                      " So that I can see `` in markdown files
if has("patch-8.1.1564")
  set signcolumn=number                 " Recently vim can merge signcolumn and number column into one
else
  set signcolumn=yes
endif

" AutoCommands
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Stop newline continution of comments
" autocmd FileType markdown set conceallevel=0 " Don't conceal characters like *
autocmd BufNewFile,BufRead *.md setlocal spell " Spelling

" You can't stop me
cmap w!! w !sudo tee %
