#!/bin/bash
echo "Cleaning after last build"
make clean
echo "Preparing for build"
make cyanogenmod_p760_defconfig ARCH=arm
echo "Starting building.."
make -j6 ARCH=arm CROSS_COMPILE=/home/artur/android-ndk-r9/toolchains/arm-linux-androideabi-4.7/prebuilt/linux-x86_64/bin/arm-linux-androideabi- zImage
#make -j6 /home/artur/arm-unknown-linux-gnueabi-linaro_4.8.3-2013.11/bin/arm-unknown-linux-gnueabi- zImage
