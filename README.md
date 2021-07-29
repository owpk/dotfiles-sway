<p align="center">
   <img src="https://github.com/owpk/dotfiles-sway/blob/master/sc.jpg"/>
</p>

# Install for arch linux (just copy and paste to terminal)

1. install all needed apps
```
sudo pacman -S --needed sway reflector mtools vim neovim zsh vifm \
papirus-icon-theme noto-fonts-emoji ttf-hack wl-clipboard \
translate-shell slurp grim light pamixer wmname
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
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" & \
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k & \
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions & \
mv ~/.zshrc ~/.zshrc.bak 2> /dev/null & \
ln -s ./.zshrc ~/.zshrc & \
mv ~/.p10k.zsh ~/.p10k.zsh.bak 2> /dev/null & \
ln -s ./.p10k.zsh ~/.p10k.zsh
```
5. create all needed links
```
mv ~/.config ~/.config.bak 2> /dev/null & \
ln -s ./config ~/.config & \
mv ~/.vim ~/.vim.bak 2> /dev/null & \
ln -s ./.vim ~/.vim
```
6. insatll aurutils
```
git clone https://aur.archlinux.org/aurutils.git & \
cd aurutils & \
makepkg -si & \
su root & \
CUSTOM=/etc/pacman.d/custom & \
touch $CUSTOM & \
echo '[options]' >> $CUSTOM & \
echo 'CacheDir = /var/cache/pacman/pkg' >> $CUSTOM & \
echo 'CacheDir = /var/cache/pacman/custom' >> $CUSTOM & \
echo 'CleanMethod = KeepCurrent' >> $CUSTOM & \
echo '[custom]' >> $CUSTOM & \
echo 'SigLevel = Optional TrustAll' >> $CUSTOM & \
echo 'Server = file:///var/cache/pacman/custom' >> $CUSTOM & \
echo 'Include = /etc/pacman.d/custom' >> /etc/pacman.conf & \
install -d /var/cache/pacman/custom -o $USER & \
repo-add /var/cache/pacman/custom/custom.db.tar & \
pacman -Syu & \
su $USER
```
7. install menus/toolbars/utils etc for sway
```
aur sync wob-git & \
sudo pacman -S wob-git & \
aur sync nwg-launchers & \
sudo pacman -S nwg-launchers & \
aur sycnc networkmanager-dmenu-git & \
sudo pacman -S networkmanager-dmenu-git
```
8. run sway (from terminal) to ensure if everything is ok and reboot system
```
sway & \
reboot
```
- see .config/sway/keyboard.conf to change keyboard layout and other kb settings
- see .config/sway/config.d/default to change hotkeys config

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
