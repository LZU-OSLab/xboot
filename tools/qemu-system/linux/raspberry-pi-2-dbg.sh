#!/bin/sh
#

# The qemu's root directory.
export QEMU_DIR=$(cd `dirname $0` ; pwd)

# Run qemu
exec qemu-system-arm -M raspi2 -m 512M -global bcm2835-fb.pixo=0 -name "Raspberry Pi 2" -S -gdb tcp::10000,ipv4 -show-cursor -localtime -serial stdio -kernel ${QEMU_DIR}/../../../output/xboot
