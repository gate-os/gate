#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist

groupadd liveuser
useradd -g liveuser -M liveuser -s /bin/bash
passwd -d liveuser
echo "liveuser ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers;

systemctl enable lightdm
systemctl enable lightdm.service
systemctl enable graphical.target
