# dotfiles

## install pacman packages
```
sudo pacman -Syyu zsh yadm hyprland pamixer wget tmux python nodejs npm neofetch kitty curl git base-devel pipewire-pulse wireplumber waybar rofi yarn ttf-font-awesome ttf-jetbrains-mono fzf ntfs-3g mpd cantata libnotify fd dolphin qt5ct swww rustup cronie
```

## install yay
```
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

## install yay packages
```
yay -s neovim-git ttf-meslo-nerd-font-powerlevel10k
```

## install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## install locale
```
sudo vim /etc/locale.gen
```
then uncomment your locale and run:
```
sudo locale-gen
```

## install theme for qt apps
### enable chaotic-aur
```
https://aur.chaotic.cx/
```
```
sudo pacman -Syyu lightly-qt
```
```
https://github.com/catppuccin/qt5ct
```

## install pip
```
python -m ensurepip --upgrade
```

## setup random wallpaper switching
from: https://github.com/tiagofmcosta/wayland-random-wallpaper
```
./misc/setup.sh
```
and move the executable into /usr/local/bin

then enable the cronie service and setup a cron job
```
sudo systemctl enable cronie.service
```
```
crontab -e
```
```
*/30 * * * * random-wallpaper
```
