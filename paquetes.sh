!/bin/bash

# Actualizar la lista de paquetes y el sistema
pacman -Syu --noconfirm

# Instalar
#
pacman -Syu --noconfirm ntfs-3g linux-headers base-devel networkmanager network-manager-applet wpa_supplicant wireless_tools dialog cups cups-pdf xdg-utils xdg-user-dirs noto-fonts print-manager reflector ttf-liberation ttf-ubuntu-font-family ttf-anonymous-pro ttf-bitstream-vera adobe-source-sans-pro-fonts noto-fonts-cjk noto-fonts-emoji gufw ttf-croscore ttf-dejavu ttf-ibm-plex ttf-jetbrains-mono ttf-liberation xterm unzip unrar p7zip baloo-widgets dolphin-plugins ffmpegthumbs kde-inotify-survey kdeconnect kdegraphics-thumbnailers kdenetwork-filesharing kimageformats kio-admin kio-extras kio-fuse kio-gdrive libappindicator-gtk3 phonon-qt6-vlc qt6-imageformats xwaylandvideobridge icoutils iio-sensor-proxy maliit-keyboard power-profiles-daemon xdg-desktop-portal-gtk xsettingsd

# Habilatar servicios
#
systemctl enable NetworkManager
systemctl enable cups.service
systemctl enable fstrim.timer
systemctl enable power-profiles-daemon

