#!/bin/bash

# This script connects with kali installed on Drive.
# Requirements: fdisk mount chroot

sudo fdisk -l | grep /dev/
echo ""
echo -e "\e[1;33m                  # Remote Shell #           \e[0m"
echo ""
echo -e "\e[1;32m This script allows you to connect with shell of OS installed in a Drive. \e[0m"
echo ""
echo -e "\e[1;32m Enter the Drive/Partition Name showing above. [eg: sda2] \e[0m"
# pertition name | input promt
read -p "=>" PartitionName
sudo mount /dev/$PartitionName /mnt
sudo mount --rbind /sys /mnt/sys
sudo mount --rbind /dev /mnt/dev
sudo chroot /mnt /bin/bash

