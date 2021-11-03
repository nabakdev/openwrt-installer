#!/bin/ash
passwd -d root
cd /tmp
chmod +x busybox
./busybox telnetd

ln -s busybox ftpd
chmod +x ftpd
./busybox tcpsvd -vE 0.0.0.0 21 ./ftpd -Sw / >> /tmp/msg_ftpd 2>&1 &
