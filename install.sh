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
if [ ! -e .utils ]; then
    mkdir .utils
fi
cd .utils

# bat
echo "[*] Installing: bat"
wget https://github.com/sharkdp/bat/releases/download/v0.2.2/bat-v0.2.2-x86_64-unknown-linux-gnu.tar.gz
tar xvf bat-v0.2.2-x86_64-unknown-linux-gnu.tar.gz
rm bat-v0.2.2-x86_64-unknown-linux-gnu.tar.gz
mv bat-v0.2.2-x86_64-unknown-linux-gnu/bat bat
rm -rf bat-v0.2.2-x86_64-unknown-linux-gnu

# fzf
echo "[*] Installing: fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

# exa
echo "[*] Installing: exa"
wget https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip
unzip exa-linux-x86_64-0.8.0.zip
mv exa-linux-x86_64 ~/.utils/exa
rm exa-linux-x86_64-0.8.0.zip

# autojump
echo "[*] Installing: autojump"
if [ -e ~/.utils/autojump ]; then
	rm -rf ~/.utils/autojump
fi
git clone git://github.com/wting/autojump.git _autojump
cd _autojump
./install.py -d ~/.utils/autojump
cd ..
rm -rf _autojump
