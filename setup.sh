#!/bin/bash

for file in .??*
do
    [[ "$file" == ".git" ]] && continue
    [[ "$file" == ".DS_Store" ]] && continue

    if [ -e $HOME/$file ]; then
        echo "既にファイルが存在します: $file"
    else
        ln -s $HOME/dotfiles/$file $HOME/$file
        echo "シンボリックリンクを張りました: $file"
    fi
done
