# dotfiles

## install pacman packages
```
sudo pacman -S zsh yadm hyprland pamixer wget tmux python nodejs npm neofetch kitty curl git base-devel pipewire-pulse wireplumber waybar rofi yarn ttf-font-awesome ttf-jetbrains-mono fzf
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

## install pip
```
python -m ensurepip --upgrade
```
