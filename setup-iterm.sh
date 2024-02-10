brew install iterm
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
chsh -s /bin/zsh
echo "Please set your iterm font to Inconsolata 16pt, and download a theme from https://iterm2colorschemes.com/. Dracula+ is good."
read -p "Press any key to open ~/.zshrc, where you should set the console theme to 'agnoster'."
nano ~/.zshrc
zsh