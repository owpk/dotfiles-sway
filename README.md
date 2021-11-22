
- SWITCH BETWEEN master AND waybar_gaps_css_theme GIT BRANCHES TO SWITCH WAYBAR THEME
- SEE .config/sway/config.d/input TO CHANGE KEYBOARD LAYOUT AND OTHER KB SETTINGS
- SEE .config/sway/config.d/default TO CHANGE KEY BINDINGS CONFIG

<p align="center">
   <img src="https://github.com/owpk/dotfiles-sway/blob/master/sc.jpg"/>
</p>
<p align="center">
   <img src="https://github.com/owpk/dotfiles-sway/blob/master/sc_wbg.png"/>
</p>
<p align="center">
   <img src="https://github.com/owpk/dotfiles-sway/blob/master/sc.gif"/>
</p>

# Install for arch linux (copy and paste to terminal)

1. install all needed apps
```
sudo pacman -S --needed sway wofi waybar reflector mtools vim neovim zsh vifm \
papirus-icon-theme noto-fonts-emoji ttf-hack wl-clipboard \
translate-shell slurp grim light pamixer wmname dmenu xdg-desktop-portal \
kanshi gnome-keyring alacritty kitty pavucontrol playerctl imv mpv
sudo usermod -a -G video $USER
```
2. clone dotfiles
```
git clone https://github.com/owpk/dotfiles-sway
cd dotfiles-sway
```
3. change shell to zsh
```
chsh -s /bin/zsh $USER
```
4. install zsh utils
- type exit when ohmyzsh will be installed (first plugin)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
5. create all needed links and copy fonts
```
sudo mkdir /usr/share/fonts/TTF 2> /dev/null
sudo cp ./fonts/* /usr/share/fonts/TTF/
fc-cache
mv ~/.zshrc ~/.zshrc.bak 2> /dev/null
ln -s `pwd`/.zshrc ~/.zshrc
mv ~/.p10k.zsh ~/.p10k.zsh.bak 2> /dev/null
ln -s `pwd`/.p10k.zsh ~/.p10k.zsh
mv ~/.config ~/.config.bak 2> /dev/null
ln -s `pwd`/.config ~/.config
mv ~/.vim ~/.vim.bak 2> /dev/null
ln -s `pwd`/.vim ~/.vim
```
6. insatll aurutils
```
git clone https://aur.archlinux.org/aurutils.git
cd aurutils
makepkg -si
```

7. configure custom pacman repository
```
CUSTOM=/etc/pacman.d/custom
sudo touch $CUSTOM

sudo cat >> $CUSTOM << EOF
'[options]'
'CacheDir = /var/cache/pacman/pkg'
'CacheDir = /var/cache/pacman/custom'
'CleanMethod = KeepCurrent'

'[custom]'
'SigLevel = Optional TrustAll'
'Server = file:///var/cache/pacman/custom'
EOF

sudo echo 'Include = /etc/pacman.d/custom' >> /etc/pacman.conf
install -d /var/cache/pacman/custom -o $USER
repo-add /var/cache/pacman/custom/custom.db.tar
sudo pacman -Syu
```
8. install menus/toolbars/utils etc for sway
 - install last app if you have networkmanager installed
```
aur sync wob-git
sudo pacman -S wob-git
aur sync nwg-launchers
sudo pacman -S nwg-launchers
aur sync wlsunset
sudo pacman -S wlsunset
aur sync azote
sudo pacman -S azote
aur sync networkmanager-dmenu-git
sudo pacman -S networkmanager-dmenu-git
aur sync epy-git
sudo pacman -S epy-git
```
9. run sway (from terminal) to ensure if everything is ok and reboot system
```
sway
reboot
```

# useful links
- sway wm
https://github.com/swaywm/sway
- waybar (status bar)
https://github.com/Alexays/Waybar
- wofi (menus/launchers)
https://hg.sr.ht/~scoopta/wofi
- mako (wayland notification daemon)
https://github.com/emersion/mako
- nwg-launchers (menus/launchers)
https://github.com/nwg-piotr/nwg-launchers
- wob (wayland overlay bar)
https://github.com/francma/wob
