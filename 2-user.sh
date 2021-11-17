#!/usr/bin/env bash
echo -e "\nINSTALLING AUR SOFTWARE\n"
# You can solve users running this script as root with this and then doing the same for the next for statement. However I will leave this up to you.

echo "CLONING: PARU"
cd ~
git clone "https://aur.archlinux.org/paru.git"
cd ${HOME}/paru
makepkg -si --noconfirm
cd ~
touch "$HOME/.cache/zshhistory"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

PKGS=(
'visual-studio-code-bin'
'azuredatastudio-bin'
'multimc-bin'
'obsidian'
)

for PKG in "${PKGS[@]}"; do
    paru -S --noconfirm $PKG
done

export PATH=$PATH:~/.local/bin
cp -r $HOME/ArchV/dotfiles/config $HOME/.config/

echo -e "\nDone!\n"
exit
