#!/bin/bash

if [[ "$USER" != "root" ]]; then
	echo "run with sudo"
	exit
fi

#which node npm >/dev/null
#if [ $? -ne 0 ]; then
#    sudo apt-get install nodejs npm
#fi
#
#npm install --global pure-prompt

ln -s "$PWD/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
ln -s "$PWD/async.zsh" /usr/local/share/zsh/site-functions/async


sed -e "s/^ZSH_THEME\(.*\)$/ZSH_THEME=\"\"/" -i ~/.zshrc
echo "autoload -U promptinit; promptinit" >> ~/.zshrc
echo "prompt pure" >> ~/.zshrc

echo "[+] Installation successful"
