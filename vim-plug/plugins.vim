" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    " Auto close tags <>
    Plug 'alvan/vim-closetag'
    " Theme
    Plug 'arcticicestudio/nord-vim'
    " Air theme
    Plug 'vim-airline/vim-airline'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Complements
    Plug 'tpope/vim-commentary'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " Surround
    Plug 'tpope/vim-surround'
    " Fast within-file word replacement.
    Plug 'wincent/scalpel'
    " FZF and rooter
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " For show the #color in a css file
    Plug 'ap/vim-css-color'
    " For git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    " Vim whichkeys
    Plug 'liuchengxu/vim-which-key'
    " Distraction free writing by removing UI elements and centering everything.
    Plug 'junegunn/goyo.vim'
    " For nice & tabular tables. (works in md too)
    Plug 'godlygeek/tabular'
    " VimWiki
    Plug 'vimwiki/vimwiki'

call plug#end()
