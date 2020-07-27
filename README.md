> for install NordVim in gnome terminal
https://github.com/arcticicestudio/nord-gnome-terminal
> for install CoC-extensions
CocInstall coc-css coc-explorer coc-html coc-json coc-python coc-snippets coc-vimlsp
> if pythonfiles have error in jediPath
install jedi globally -pip3 install jedi
use pip3 to find jedi path pip3 show jedi
go to your coc-settings.json add the path shown by pip3 (exactly that path) and use it as the value of python.jediPath

> install python and the extension for nvim
pip3 install neovim pynvim
> To install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
$ cd ~/.fzf/
$ ./install
> To install ripgrep
sudo add-apt-repository ppa:x4121/ripgrep
sudo apt-get update
