/bin/bash

# Actualizar la lista de paquetes y el sistema
pacman -Syu --noconfirm

# Instalar paquetes basicos mas KDE pre-requisitos
#
pacman -Syu --noconfirm ntfs-3g linux-headers base-devel networkmanager network-manager-applet wpa_supplicant wireless_tools dialog cups cups-pdf xdg-utils xdg-user-dirs print-manager reflector gufw xterm unzip unrar p7zip baloo-widgets dolphin-plugins ffmpegthumbs kde-inotify-survey kdeconnect kdegraphics-thumbnailers kdenetwork-filesharing kimageformats kio-admin kio-extras kio-fuse kio-gdrive libappindicator-gtk3 phonon-qt6-vlc qt6-imageformats xwaylandvideobridge icoutils iio-sensor-proxy maliit-keyboard power-profiles-daemon xdg-desktop-portal-gtk xsettingsd

# Instalar fuentes
#
pacman -S --noconfirm noto-fonts ttf-liberation ttf-ubuntu-font-family ttf-anonymous-pro ttf-bitstream-vera adobe-source-sans-pro-fonts noto-fonts-cjk noto-fonts-emoji ttf-croscore ttf-dejavu ttf-ibm-plex ttf-jetbrains-mono ttf-liberation cantrell-fonts inter-font ttf-caladea ttf-carlito ttf-cascadia-code ttf-droid ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-inconsolata ttf-opensans ttf-roboto

# Habilatar servicios
#
systemctl enable NetworkManager
systemctl enable cups.service
systemctl enable fstrim.timer
systemctl enable power-profiles-daemon
systemctl enable reflector.timer
systemctl enable ufw.service

# Instalar bootloader
#
pacman -S --noconfirm grub mtools dosfstools os-prober 

grub-install --target=i386-pc --recheck /dev/sda

grub-mkconfig - o /boot/grub/grub.cfg

# Instalar drivers graficos
#
pacman -S mesa libva-intel-driver libva-utils

# Instalar Plasma
#
pacman -S --noconfirm plasma kde-system-meta kde-utilities-meta kde-sdk-meta kde-graphics-meta git pipewire pipewire-audio pipewire-alsa pipewire-pulse pipewire-jack alsa-utils packagekit-qt6 discord telegram-desktop calibre firefox firefox-i18n-es-ar libreoffice-fresh libreoffice-fresh-es hunspell hunspell-es_any hyphen hyphen-es

systemctl enable sddm


echo "Instalacion Completa"
