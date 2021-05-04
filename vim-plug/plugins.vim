" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Theme
    Plug 'arcticicestudio/nord-vim'
    " Air theme
    Plug 'vim-airline/vim-airline'
    " Nice Icons
    Plug 'ryanoasis/vim-devicons'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " FZF and rooter
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " For color
    Plug 'norcalli/nvim-colorizer.lua'
    " For git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/gv.vim'
    " Vim whichkeys
    Plug 'liuchengxu/vim-which-key'
    " Complements
    Plug 'tpope/vim-commentary'
    " Surround
    Plug 'tpope/vim-surround'
    " Fast within-file word replacement.
    Plug 'wincent/scalpel'
    " Distraction free writing by removing UI elements and centering everything.
    Plug 'junegunn/goyo.vim'
    " Snippets
    Plug 'honza/vim-snippets'
    " For indent
    Plug 'yggdroot/indentline'
    " Auto close tags <>
    Plug 'alvan/vim-closetag'
    " Auto change html tags
    Plug 'AndrewRadev/tagalong.vim'
    " VimWiki
    Plug 'vimwiki/vimwiki'
    " Vim-Startify
    Plug 'mhinz/vim-startify'

call plug#end()
