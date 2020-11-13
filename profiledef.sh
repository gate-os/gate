#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="gatelinux"
iso_label="GATE_$(date +%Y%m)"
iso_publisher="Gate Linux <https://www.github.com/gate-os/>"
iso_application="Gate Linux Live CD"
iso_version="$(date +%Y.%m.%d)"
install_dir="gate"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
