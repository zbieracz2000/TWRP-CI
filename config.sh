#!/bin/bash

# Device
export FOX_BRANCH="android-7.1"
export DT_LINK="https://github.com/zbieracz2000/android_sony_kitakami_twrp.git -b sumire"

export DEVICE="sumire"
export OEM="sony"

# Build Target
## "recoveryimage" - for A-Only Devices without using Vendor Boot
## "bootimage" - for A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher)
export TARGET="recoveryimage"

export OUTPUT="TWRP*.zip"

# Additional Dependencies (eg: Kernel Source)
# Format: "repo dest"
DEPS=(
)

# Extra Command
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
export OF_LEGACY_SHAR512=1
# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
