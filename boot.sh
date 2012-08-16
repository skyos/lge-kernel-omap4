#!/bin/bash
echo 'Restarting adb...'
sudo adb kill-server
sudo adb start-server
echo 'Rebooting to fastboot'
adb reboot oem-unlock
echo 'Waiting to fastboot...'
sleep 7
echo 'Booting...'
sudo fastboot boot /media/artur/46abf528-b142-4347-9b81-9f6e6045c1ff/cm11/kernel/lge/omap4-common/arch/arm/boot/zImage
echo 'artas182x'

