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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/advan/s4a/s4a-vendor.mk)
$(call inherit-product, build/target/product/full.mk)

include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

DEVICE_PACKAGE_OVERLAYS += device/advan/s4a/overlay

LOCAL_PATH := device/advan/s4a

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/advanced_meta_init.rc:root/advanced_meta_init.rc \
    $(LOCAL_PATH)/configs/custom_build_verno:root/custom_build_verno \
    $(LOCAL_PATH)/configs/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/configs/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/configs/fstab:root/fstab \
    $(LOCAL_PATH)/configs/init.aee.customer.rc:root/init.aee.customer.rc \
    $(LOCAL_PATH)/configs/init.charging.rc:root/init.charging.rc \
    $(LOCAL_PATH)/configs/init.fon.rc:root/init.fon.rc \
    $(LOCAL_PATH)/configs/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/configs/init.no_ssd.rc:root/init.no_ssd.rc \
    $(LOCAL_PATH)/configs/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/configs/init.protect.rc:root/init.protect.rc \
    $(LOCAL_PATH)/configs/init.rc:root/init.rc \
    $(LOCAL_PATH)/configs/init.trace.rc:root/init.trace.rc \
    $(LOCAL_PATH)/configs/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/configs/init.xlog.rc:root/init.xlog.rc \
    $(LOCAL_PATH)/configs/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/configs/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/configs/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/configs/ueventd.rc:root/ueventd.rc

# keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/configs/hid-keyboard.kl:system/usr/keylayout/hid-keyboard.kl \
    $(LOCAL_PATH)/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# idc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hid-keyboard.idc:system/usr/idc/hid-keyboard.idc

# keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hid-keyboard.kcm:system/usr/keychars/hid-keyboard.kcm

# etc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/partition_permission.sh:system/etc/partition_permission.sh \
    $(LOCAL_PATH)/configs/throttle.sh:system/etc/throttle.sh \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

# etc/wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# etc/wide-dhcpv6
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dhcp6c.conf:system/etc/wide-dhcpv6/dhcp6c.conf \
    $(LOCAL_PATH)/configs/dhcp6c.script:system/etc/wide-dhcpv6/dhcp6c.script \
    $(LOCAL_PATH)/configs/dhcp6cctlkey:system/etc/wide-dhcpv6/dhcp6cctlkey \
    $(LOCAL_PATH)/configs/dhcp6cDNS.conf:system/etc/wide-dhcpv6/dhcp6cDNS.conf \
    $(LOCAL_PATH)/configs/dhcp6s.conf:system/etc/wide-dhcpv6/dhcp6s.conf

# etc/permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# etc/firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/WMT_SOC.cfg:system/etc/firmware/WMT_SOC.cfg

