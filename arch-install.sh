ln -sf /usr/share/zoneinfo/Asia/Irkutsk /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
touch /etc/locale.conf
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
touch /etc/hostname
echo "owpk" > /etc/hostname
echo "127.0.0.1	localhost" >> /etc/hosts
echo "::1	localhost" >> /etc/hosts
echo "127.0.1.1   owpk.localdomain  owpk" >> /etc/hosts
passwd
useradd -g users -G wheel,storage,power -m owpk
passwd owpk
chmod +w /etc/sudoers
echo "owpk ALL=(ALL) ALL" >> /etc/sudoers
pacman -S networkmanager network-manager-applet wireless_tools wpa_supplicant dialog reflector mtools vim neovim snapper os-prober grub efibootmgr
systemctl enable NetworkManager.service
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
