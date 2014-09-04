#
# Copyright (C) 2014 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/advan/s4a/s4a.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := full_s4a
PRODUCT_DEVICE := s4a
PRODUCT_BRAND := advan
PRODUCT_MANUFACTURER := advan
PRODUCT_MODEL := s4a

# use english only
PRODUCT_LOCALES := en_US

# tambahan untuk default.prop
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    persist.mtk.aee.aed=on \
    persist.service.acm.enable=0 \
    ro.mount.fs=EXT4

# prebuilt binary ramdisk
PRODUCT_COPY_FILES += \
    device/advan/s4a/prebuilt/e2fsck:root/sbin/e2fsck \
    device/advan/s4a/prebuilt/meta_tst:root/sbin/meta_tst \
    device/advan/s4a/prebuilt/tune2fs:root/sbin/tune2fs
