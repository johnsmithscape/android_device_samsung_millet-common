# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk

SUB_DEVICE_PATH := device/samsung/millet-common

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(SUB_DEVICE_PATH)/bluetooth

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.hardware=qcom vmalloc=400M user_debug=23 msm_rtb.filter=0x37  androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG_MK := $(SUB_DEVICE_PATH)/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
TARGET_KERNEL_SOURCE := kernel/samsung/millet
TARGET_KERNEL_SEANDROIDENFORCE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 721420288
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 13370585
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12562627584

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(SUB_DEVICE_PATH)/rootdir/fstab.qcom

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Keymaster
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Protobuf-c
PROTOBUF_SUPPORTED := true

