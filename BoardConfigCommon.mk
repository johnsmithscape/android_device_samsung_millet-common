# Copyright (C) 2013 The CyanogenMod Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common msm8960
-include device/samsung/msm8960-common/BoardConfigCommon.mk

# Kernel 
TARGET_PREBUILT_KERNEL := device/samsung/millet-common/kernel
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/millet-common/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000

# Partitions
TARGET_USERIMAGES_USE_EXT$ := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 15485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2097152000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12759776768
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/millet-common/rootdir/fstab.qcom
TARGET_RECOVERY_INITRC := device/samsung/millet-common/rootdir/init.recovery.rc

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/millet-common/bluetooth

TARGET_NO_INITLOGO := true
BOARD_CHARGER_ENABLE_SUSPEND := true
