#!/bin/sh

tr '\000' '\377' < /dev/zero | dd of=test.bin bs=1024 count=2k
dd if=bin/targets/ar71xx/nand/openwrt-ar71xx-nand-gl-x300b-kernel.bin    conv=notrunc of=test.bin
(dd if=test.bin ;dd if=bin/targets/ar71xx/nand/openwrt-ar71xx-nand-gl-x300b-rootfs-squashfs.ubi )  > ./x300b-nand.ubi

