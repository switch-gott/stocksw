#!/bin/bash

export CROSS_COMPILE=$(pwd)/../cfp/bin/aarch64-linux-android-
export ARCH=arm64
export PLATFORM_VERSION=9.0.0
export ANDROID_MAJOR_VERSION=p

make -C $(pwd) O=$(pwd)/out gts3llte_eur_open_defconfig
CORE_COUNT=`grep processor /proc/cpuinfo|wc -l`
make -j$(nproc) -C $(pwd) O=$(pwd)/out

#tools/dtbTool -s 4096 -o arch/arm64/boot/dt.img -p scripts/dtc/ arch/arm64/boot/dts/samsung/

