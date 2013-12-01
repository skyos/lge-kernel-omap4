#!/bin/bash
echo "Cleaning after last build"
make clean
echo "Preparing for build"
make cyanogenmod_p760_defconfig ARCH=arm
echo "Starting building.."
#make -j6 ARCH=arm CROSS_COMPILE=../prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- zImage
make -j6 ARCH=arm CROSS_COMPILE=/home/artur/android-ndk-r9/toolchains/arm-linux-androideabi-4.7/prebuilt/linux-x86_64/bin/arm-linux-androideabi- zImage
#make -j6 ARCH=arm CROSS_COMPILE=/home/artur/android-ndk-r9/toolchains/arm-linux-androideabi-4.7/prebuilt/linux-x86_64/bin/arm-linux-androideabi- modules
