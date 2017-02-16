#!/bin/bash

for file in .??*
do
    [[ "$file" == ".git" ]] && continue
    [[ "$file" == ".DS_Store" ]] && continue

    if [ -e $HOME/$file ]; then
        echo "既にファイルが存在します: $file"
    else
#        ln -s $HOME/dotfiles/$file $HOME/$file
        echo "シンボリックリンクを張りました: $file"
    fi
done

# fish shell
ln -sf ~/dotfiles/fish/ ~/.config/fish
ln -sf ~/dotfiles/omf/ ~/.config/omf
ln -s ~/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
