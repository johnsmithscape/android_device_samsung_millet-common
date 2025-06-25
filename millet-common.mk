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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/millet-common/millet-common-vendor.mk)

# Overlay

# Boot animation
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \

# Media Profile
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:system/usr/keylayout/synaptics_rmi4_i2c.kl

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/init.container.rc:root/init.container.rc \
    $(LOCAL_PATH)/rootdir/init.environ.rc:root/init.environ.rc \
    $(LOCAL_PATH)/rootdir/init.mdm.sh:root/init.mdm.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.factory.sh:root/init.qcom.factory.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.ril.sh:root/init.qcom.ril.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/rootdir/init.ril.rc:root/init.ril.rc \
    $(LOCAL_PATH)/rootdir/init.ril.sh:root/init.ril.sh \
    $(LOCAL_PATH)/rootdir/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/rootdir/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/rootdir/init.usb.rc:root/init.usb.rc

# Etc scripts

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/init.ath3k.bt.sh:root/system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.crda.sh:root/system/etc/init.crda.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.audio.sh:root/system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.bt.sh:root/system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.coex.sh:root/system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.efs.sync.sh:root/system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.fm.sh:root/system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.modem_links.sh:root/system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.post_boot.sh:root/system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.sdio.sh:root/system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.qcom.wifi.sh:root/system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/rootdir/system/etc/init.sec.boot.sh:root/system/etc/init.sec.boot.sh

# FM radio
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

# Torch
PRODUCT_PACKAGES += \
    Torch

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# call common msm8960
$(call inherit-product, device/samsung/msm8960-common/msm8630.mk)
