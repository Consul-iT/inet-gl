#!/bin/sh

tr '\000' '\377' < /dev/zero | dd of=test.bin bs=1024 count=2k
dd if=build_dir/target-mips_24kc_musl/linux-ar71xx_generic/gl-x300b-kernel.bin   conv=notrunc of=test.bin
(dd if=test.bin ;dd if=bin/targets/ar71xx/generic/openwrt-ar71xx-generic-root.squashfs )  > ./x300b.bin

