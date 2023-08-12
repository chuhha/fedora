#!/bin/bash
clear; sleep 5
echo 'Установка необходимых программ начнется'
echo 'сразу после проверочного обновления системы'
sleep 3; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]'; sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]'; sleep 0.1; clear
clear
echo 'Начинается обновление системы'
sleep 3
sudo dnf upgrade --refresh --best -y
echo ''
sleep 3
echo 'Установка flatpak-программ (некоторые могут заработать после перезагрузки системы'
sleep 3
flatpak install -y flathub org.telegram.desktop \
org.onlyoffice.desktopeditors \
io.github.mimbrero.WhatsAppDesktop \
io.github.realmazharhussain.GdmSettings \
com.mattjakeman.ExtensionManager
echo ''
echo ''
echo 'Реинсталяция flatpak (при необходимости)'
sleep 3
flatpak update -y
echo ''
echo 'Установка завершена, переход на .rpm пакеты'
sleep 5
clear
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install -y flatseal \
obs-studio \
kdenlive \
google-chrome-stable \
gimp \
vlc \
putty \
cpu-x \
qbittorrent \
foliate \
ark \
code \
unrar \
neofetch \
python3-pip \
p7zip \
gparted \
echo ''; clear
echo 'Установка с репозиториев завершена'
echo 'Скачивание и установка отдельных пакетов...'
sleep 5
wget https://github.com/Foundry376/Mailspring/releases/download/1.11.0/mailspring-1.11.0-0.1.x86_64.rpm
wget https://downloads.vivaldi.com/stable/vivaldi-stable-6.1.3035.257-1.x86_64.rpm
wget https://zoom.us/client/5.15.7.6521/zoom_x86_64.rpm
wget https://github.com/balena-io/etcher/releases/download/v1.18.11/balena-etcher-1.18.11.x86_64.rpm
wget https://github.com/rustdesk/rustdesk/releases/download/1.2.1/rustdesk-1.2.1-0.x86_64.rpm
sudo yum localinstall *.rpm -y
sudo rm *.rpm
echo 'Установка завершена'
echo 'Идет процесс стандартной работы'
clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]'; sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]'; sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]'; sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]'; sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]'; sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]'; sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]'; sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]';sleep 0.1; clear
echo '[/]'; sleep 0.1; clear
echo '[--]'; sleep 0.1; clear
echo '[\]';sleep 0.1; clear
echo '[|]'; sleep 0.1; clear
echo 'Процесс полностью завершен'
