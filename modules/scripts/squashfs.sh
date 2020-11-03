#!/bin/sh -ex

apt-get -y install squashfs-tools

mkdir -p /mnt/squashfs /squashfs
mount -o bind / /mnt/squashfs

mksquashfs /mnt/squashfs /squashfs/filesystem.squashfs -comp gzip -no-exports -xattrs -noappend -no-recovery -e /mnt/squashfs/squashfs/filesystem.squashfs
find /boot -name 'vmlinuz-*' -type f -exec cp {} /squashfs/vmlinuz \;
find /boot -name 'init*' -type f -exec cp {} /squashfs/initrd.img \;