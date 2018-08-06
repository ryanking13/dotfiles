which curl wget git vim zsh>/dev/null
if [ $? -ne 0 ]; then
    echo "please install curl wget git vim zsh"
    exit
fi

cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
echo "exec $(which zsh)" >> ~/.bashrc

if [ -e ~/.vim/bundle/Vundle.vim ]; then
    rm -rf ~/.vim/bundle/Vundle.vim
fi
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# other utilities
cd ~
if [ ! -e _utils ]; then
    mkdir _utils
fi
cd _utils

# bat
echo "[*] INSTALLING bat"
wget https://github.com/sharkdp/bat/releases/download/v0.2.2/bat-v0.2.2-x86_64-unknown-linux-gnu.tar.gz
tar xvf bat-v0.2.2-x86_64-unknown-linux-gnu.tar.gz
rm bat-v0.2.2-x86_64-unknown-linux-gnu.tar.gz
mv bat-v0.2.2-x86_64-unknown-linux-gnu/bat bat
rm -rf bat-v0.2.2-x86_64-unknown-linux-gnu
