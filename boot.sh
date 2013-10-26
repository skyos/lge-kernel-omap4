#!/bin/bash
echo 'Restarting adb...'
sudo adb kill-server
sudo adb start-server
echo 'Rebooting to fastboot'
adb reboot oem-unlock
echo 'Waiting to fastboot...'
sleep 7
echo 'Booting...'
sudo fastboot boot /home/artur/aosp_kernel/arch/arm/boot/zImage
echo 'artas182x'

