#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist

echo "gate ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers;

echo "KERNEL==\"sd*\", SUBSYSTEMS==\"usb\", MODE=\"0555\"" > /etc/udev/rules.d/25-usb-read-only.rules

#create keyring
sudo pacman-key --init
#load official dev keys into pacman-keyring
sudo pacman-key --populate archlinux

systemctl enable lxdm.service
systemctl enable graphical.target
