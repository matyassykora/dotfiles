# dotfiles

## install pacman packages
```
sudo pacman -Syyu zsh yadm hyprland pamixer wget tmux python nodejs npm neofetch kitty curl git base-devel pipewire-pulse wireplumber waybar rofi yarn ttf-font-awesome ttf-jetbrains-mono fzf ntfs-3g mpd cantata libnotify fd dolphin qt5ct swww discord ripgrep wl-clipboard man-pages man-db jq
```
## install yay
```
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

## install yay packages
```
yay -s neovim-git ttf-meslo-nerd-font-powerlevel10k wpaperd xwaylandvideobridge-bin betterdiscord-git betterdiscordctl symfony-cli-bin xwaylandvideobridge-bin hoppscotch-bin air
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

## install tmux plugin manager
```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
<[prefix]-I> to install
```

## add windows entry to systemd-boot bootloader
https://forum.endeavouros.com/t/tutorial-add-a-systemd-boot-loader-menu-entry-for-a-windows-installation-using-a-separate-esp-partition/37431
