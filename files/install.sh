#!/bin/ash
passwd -d root
cd /tmp
mtd -r write /tmp/openwrt.bin OS1 &
