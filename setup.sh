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
ln -nsf ~/dotfiles/.config/fish ~/.config/fish
ln -nsf ~/dotfiles/.config/omf ~/.config/omf
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
