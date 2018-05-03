sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc

# other utilities
cd ~
mkdir _utils
cd _utils

# bat
echo "[*] INSTALLING bat"
wget https://github.com/sharkdp/bat/releases/download/v0.2.2/bat-v0.2.2-x86_64-unknown-linux-gnu.tar.gz
tar xvf bat-v0.2.2-x86_64-unknown-linux-gnu.tar.gz
rm bat-v0.2.2-x86_64-unknown-linux-gnu.tar.gz
mv bat-v0.2.2-x86_64-unknown-linux-gnu _bat
