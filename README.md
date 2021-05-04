# NeoNordNvim

[NeoVim](https://https://neovim.io/) Basic configuration for web developers.

## Install

´´´bash
    git clone https://github.com/jorgeav527/nvim.git
    cd ~/.config/nvim/
    :PlugInstall
    :PlugUpdate
    :CocInstall
    :CocUpdateSync
´´´
## Dependencies

1. NeoVim 
    ´´´bash
        sudo apt install python-neovim
        sudo apt install python3-neovim
        sudo apt-get install software-properties-common
        sudo add-apt-repository ppa:neovim-ppa/unstable
        sudo apt-get update
        sudo apt-get install neovim
        sudo apt-get install python-dev python-pip python3-dev python3-pip
    ´´´
    [Info for Ubuntu](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. FZF
    ´´´bash
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install
    ´´´
    [Info](https://github.com/junegunn/fzf)
3. Ripgrep
    ´´´bash
        sudo apt-get install ripgrep
    ´´´
    [Info](https://github.com/BurntSushi/ripgrep#installation)
5. [Fonts (FiraNerdFont)](https://github.com/ryanoasis/nerd-fonts)
6. Python and Node
    ´´´Bash
        pip install pynvim (pre install python3, pip3)
        npm i -g neovim (pre install nodejs and make it global)
    ´´´
7. Clipboard
    ´´´bash
        sudo apt install xsel
    ´´´
9. Principles plugins
    - [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot) *"One to rule them all, one to find them, one to bring them all and in the darkness bind them."*
    - [arcticicestudio/nord-vim](https://github.com/arcticicestudio/nord-vim) *"An arctic, north-bluish clean and elegant Vim color theme."*
    - [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline) *"Lean & mean status/tabline for vim that's light as air for nord too."*
    - [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons) *"Adds filetype glyphs (icons) to various vim plugins."*
    - [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim) *"Make your Vim/Neovim as smart as VSCode."*
    - [junegunn/fzf](https://github.com/junegunn/fzf) *"fzf is a general-purpose command-line fuzzy finder."*
    - [airblade/vim-rooter]() *""*
    - [ap/vim-css-color]() *""*
    - [mhinz/vim-signify]() *""*
    - [tpope/vim-fugitive]() *""*
    - [junegunn/gv.vim]() *""*
    - [liuchengxu/vim-which-key]() *""*
    - [wincent/scalpel]() *""*
    - [junegunn/goyo.vim]() *""*
    - [honza/vim-snippets]() *""*
    - [yggdroot/indentline]() *""*
    - [alvan/vim-closetag]() *""*
    - [AndrewRadev/tagalong]() *""*
    - [vimwiki/vimwiki]() *""*
    - [mhinz/vim-startify]() *""*
