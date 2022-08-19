#! /bin/bash
if [ ! $(command -v apt) ] ;then
	sleep 0.1
	else sudo apt install fzf exa zsh bat -y
fi

if [ ! $(command -v pacman) ] ;then
	sleep 0.1
	else sudo pacman -S fzf exa bat zsh --noconfirm 
fi

echo "正在解压中！"
7z x ./oh-my-zsh.7z ~/. >/dev/null 2>&1
echo "正在复制zshrc"
cp ./zshrc ~/.zshrc
echo "完成"

sudo chsh -s /bin/zsh


