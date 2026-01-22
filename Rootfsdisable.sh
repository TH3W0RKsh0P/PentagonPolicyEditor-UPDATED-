#!/bin/bash

echo 'Welcome to the Pentagon Policy Editor RootFS Disabler!'
read -p 'Disable RootFS verification (y, n)? ' ANS

if [[ $ANS -eq 'y' ]]; then 

sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk0 --remove_rootfs_verification --partitions 2
sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk0 --remove_rootfs_verification --partitions 4
echo 'RootFS has been disabled! (or already was)'

else 
  exit 1

fi 
