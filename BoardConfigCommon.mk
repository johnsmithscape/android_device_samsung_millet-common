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

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom vmalloc=400M user_debug=23 msm_rtb.filter=0x37  androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_SEPARATED_DT := true
#BOARD_CUSTOM_BOOTIMG_MK := $(SUB_DEVICE_PATH)/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --dt kernel/samsung/millet3g/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
#TARGET_KERNEL_SOURCE := kernel/samsung/millet3g
TARGET_NO_KERNEL := true
TARGET_PREBUILT_KERNEL := kernel/samsung/millet3g/kernel

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12843659264
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2411724800
TARGET_USERIMAGES_USE_F2FS := true
BOARD_FLASH_BLOCK_SIZE := 4096


