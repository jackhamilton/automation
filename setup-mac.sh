/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install npm
brew install iterm
brew install neovim
brew install gh
brew install sccache
brew install bat
brew install lsd
brew install direnv
brew install zoxide
brew install qmk
brew install pipx
brew install python3
brew install tree
brew install rvm
npm install -g quicktype
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir ~/Documents/GitHub
cd ~/Documents/GitHub
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply jackhamilton
chsh -s /bin/zsh
zsh
gh repo clone jackhamilton/SwiftAssist
echo "export GIT_AUTHOR_EMAIL=jackham800@gmail.com\nexport GIT_COMMITTER_EMAIL=jackham800@gmail.com" > /SwiftAssist/.envrc
direnv allow /SwiftAssist/.envrc
sh SwiftAssist/install.sh
git config --global core.excludesfile ~/.gitignore_global
git clone https://github.com/ColemakMods/mod-dh.gitignore_global
cp -r '/mod-dh/macOS/Colemak DH.bundle/' ~/Library/Keyboard\ Layouts/
rm -rf mod-dh
gh repo clone git@github.com:jackhamilton/miryoku_qmk.git
cp /SwiftAssist/.envrc /qmk/.envrc
direnv allow /qmk/.envrc
if ! test -d /automation; then
    gh repo clone git@github.com:jackhamilton/automation.git
fi
cp /SwiftAssist/.envrc /automation/.envrc
read -p "Please set your iterm font to Inconsolata 16pt, and download a theme from https://iterm2colorschemes.com/. Dracula+ is good. Keyboard layout config also cannot be done automatically."
