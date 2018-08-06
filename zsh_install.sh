
which zsh > /dev/null
if [ $? -ne 0 ]; then
    echo "NO zsh"
    exit
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
