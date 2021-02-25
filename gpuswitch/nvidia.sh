#/usr/bin/bash

sudo cp -p /home/marco/.gpuswitch/nvidia /etc/X11/xorg.conf.d/nvidia.conf

sudo cp -p /home/marco/.gpuswitch/grub/nvidiagrub /etc/default/grub
