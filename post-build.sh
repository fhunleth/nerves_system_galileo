#!/bin/sh

set -e

# Copy over the grub config to the EFI directory
cp $NERVES_DEFCONFIG_DIR/grub.cfg $BINARIES_DIR/efi-part/EFI/BOOT/grub.cfg

# Run the common post-build processing for nerves
$BR2_EXTERNAL_NERVES_PATH/board/nerves-common/post-build.sh $TARGET_DIR
