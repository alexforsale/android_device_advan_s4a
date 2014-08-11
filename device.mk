# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit dari bagian non-open-source bila tersedia
$(call inherit-product-if-exists, vendor/advan/s4a/s4a-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += \
    device/advan/s4a/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
  LOCAL_KERNEL := device/advan/s4a/kernel
else
  LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_DEFAULT_LANGUAGE := en_US

WIFI_BAND := 802_11_BG

DEVICE_RESOLUTION := 480x854

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    drm.service.enabled=true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# prebuilt kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# file ramdisk dari device/advan/s4a/Android.mk
PRODUCT_PACKAGES += \
    init.rc \
    fstab \
    ueventd.rc

# file ramdisk recovery
PRODUCT_PACKAGES += \
    init.recovery.mt6572.rc \
    sec.ko

# tambahan untuk default.prop
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.mtk.aee.aed=on \
    persist.service.acm.enable=0 \
    ro.mount.fs=EXT4

# vold
PRODUCT_COPY_FILES += \
    device/advan/s4a/configs/vold.fstab:system/etc/vold.fstab \
    device/advan/s4a/configs/vold.fstab.fat.nand:system/etc/vold.fstab.fat.nand \
    device/advan/s4a/configs/vold.fstab.nand:system/etc/vold.fstab.nand

# permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# package dari cm-10.1
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    e2fsck \
    tune2fs \
    audio_policy.stub

$(call inherit-product-if-exists, vendor/mediatek/mt6572/mt6572-vendor.mk)
