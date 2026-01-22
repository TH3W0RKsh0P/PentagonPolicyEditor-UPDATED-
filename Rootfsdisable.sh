#!/bin/bash

echo 'Welcome to PentagonPolicyEditor RootFS Disabler'
read -p 'Would you like to disable RootFS (y, n): ' ANS

if [ $ANS = 'y' ]; then

  sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk0 --remove_rootfs_verification --partitions 2
  sudo /usr/share/vboot/bin/make_dev_ssd.sh -i /dev/mmcblk0 --remove_rootfs_verification --partitions 4
  echo "RootFS has been disabled! (or already was)"

elif [ $ANS = 'n' ]; then 
  echo 'Now exiting...'
  sleep 1
  clear
  exit 1
  clear 
  
else
  echo 'Invalid option, now exiting...'
  sleep 1
  clear
  exit 1
  clear
fi
