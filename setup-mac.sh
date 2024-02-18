/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install iterm
brew install neovim
brew install rbenv
brew install gh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
git clone https://github.com/jackhamilton/dotfiles.git ~/Documents/GitHub/dotfiles
cd ~/Documents/GitHub/dotfiles
cp -r .config ~
cp .vimrc ~/
cp .zshrc ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
vim +PluginInstall +qall
vim +PackerInstall +qall
vim +PlugInstall +qall
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
chsh -s /bin/zsh
zsh
git clone https://github.com/jackhamilton/SwiftAssist.git SwiftAssist
sh SwiftAssist/install.sh
rm -rf SwiftAssist
read -p "Please set your iterm font to Inconsolata 16pt, and download a theme from https://iterm2colorschemes.com/. Dracula+ is good."