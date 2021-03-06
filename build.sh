#!/bin/bash
###############################################################################
#
#                           Kernel Build Script 
#
###############################################################################
# 2011-10-24 effectivesky : modified
# 2010-12-29 allydrop     : created
###############################################################################
##############################################################################
# set toolchain
##############################################################################
export ARCH=arm
export CROSS_COMPILE=~/android/nitrogen/prebuilts/gcc/linux-x86/arm/arm-eabi-4.9/bin/arm-eabi-
export CCACHE_DIR=~/.ccache/kernel_e975
export KBUILD_BUILD_USER=xyyx
export KBUILD_BUILD_HOST=irk
##############################################################################
# make zImage
##############################################################################
mkdir -p ./obj/KERNEL_OBJ/
make O=./obj/KERNEL_OBJ/ gee_defconfig

make -j 10 O=./obj/KERNEL_OBJ/

##############################################################################
# Copy Kernel Image
##############################################################################
cp -f ./obj/KERNEL_OBJ/arch/arm/boot/zImage .
