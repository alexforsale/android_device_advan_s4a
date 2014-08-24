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
$(call inherit-product-if-exists, device/advan/mt6572-common/mt6572-common.mk)
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

PRODUCT_PACKAGES += $(ROOTFILES)
PRODUCT_PACKAGES += $(CONFIGSFILES)

# packages dari device/advan/mt6572-common
PRODUCT_PACKAGES += \
    ACCDET.kl \
    audio_policy.conf \
    fstab.mt6572 \
    hid-keyboard.idc \
    hid-keyboard.kcm \
    hid-keyboard.kl \
    init.modem.rc \
    init.mt6572.rc \
    init.mt6572.usb.rc \
    init.protect.rc \
    lights.default \
    mtk-kpd.kl \
    partition_permission.sh \
    sensors.default \
    ueventd.mt6572.rc \
    vold.fstab

# package dari cm-10.1
PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory
