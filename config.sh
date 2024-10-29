sudo pacman -Syu
sudo pacman -Sy --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -Sy --noconfirm asdf-vm
yay -Sy --noconfirm zsh
autoload -Uz zsh-newuser-install
zsh-newuser-install -f
chsh -s /bin/zsh
yay -Sy --noconfirm ttf-meslo-nerd-font-powerlevel10k

yay -Sy --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
yay -Sy --noconfirm tree


mkdir projects/js/vuejs -p
mkdir projects/java -p
yay -Sy --noconfirm neovim
echo . /home/dev/.asdf/asdf.sh >> .zshrc
asdf plugin add java
asdf install java openjdk-21.0.2
# Instala nodejs
asdf plugin add nodejs
asdf install nodejs 20.12.2

asdf plugin add python
asdf install python 3.12.3

