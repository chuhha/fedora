#!/bin/bash
clear
echo 'Удаление мусорных программ'
sleep 3
sudo dnf remove -y cheese \
mediawriter \
libreoffice* \
rhythmbox \
gnome-weather \
gnome-maps \
gnome-help \
gnome-tour \
gnome-contacts \
gnome-photos \
totem \
gnome-connections \
echo ''
echo 'Удаление завершено, идет очистка'
sudo dnf autoremove -y
sudo dnf clean all
sleep 3
clear
sleep 3
echo 'Начнется обновление системы через 5 секунд'
sleep 1; clear
echo 'Начнется обновление системы через 4 секунды'
sleep 1; clear
echo 'Начнется обновление системы через 3 секунды'
sleep 1; clear
echo 'Начнется обновление системы через 2 секунды'
sleep 1; clear
echo 'Начнется обновление системы через 1 секунду'
sleep 1; clear
echo 'Обновление системы'
sleep 3
sudo dnf upgrade --refresh --best -y
echo ''
echo ''
echo 'Обновление завершено'
sleep 3; clear


echo 'Конфигурирование dnf.conf'
sleep 5
sudo echo 'defaultyes=true' >> /etc/dnf/dnf.conf
sudo echo 'max_parallel_downloads=10' >> /etc/dnf/dnf.conf
sudo echo 'keepcache=True' >> /etc/dnf/dnf.conf

echo 'Автоматическое обновление зеркал'
sudo dnf install dnf-automatic -y
sudo systemctl enable dnf-automatic.timer

echo 'Инициализация повторного обновления системы'
sleep 3; clear
sudo dnf upgrade --refresh --best -y
echo ''
echo 'Обновление завершено'
sleep 3
clear

echo 'Установка необходимых кодеков'
sleep 3
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y
sudo dnf install lame\* --exclude=lame-devel -y
sudo dnf group upgrade --with-optional Multimedia
echo ''
echo 'Кодеки установлены'
sleep 3; clear

echo 'Далее будут установлены репозитории'
echo 'После их установки потребуется перезагрузка системы'
echo 'После чего необходимо будет задействовать другой скрипт' 
echo 'Который работает в постнадстройку'
sleep 10
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo ''
echo ''
echo 'Установка репозиториев завершена успешно'
sleep 3; clear
echo 'Система будет автоматически перезагружена через 5 секунд'
sleep 1; clear
echo 'Система будет автоматически перезагружена через 4 секунды'
sleep 1; clear
echo 'Система будет автоматически перезагружена через 3 секунды'
sleep 1; clear
echo 'Система будет автоматически перезагружена через 2 секунды'
sleep 1; clear
echo 'Система будет автоматически перезагружена через 1 секунду'
echo 'Перезагрузка...'
sleep 2
reboot
