#
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
#

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := s4a

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/advan/s4a/full_s4a.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s4a
PRODUCT_NAME := cm_s4a #$(TARGET_PRODUCT)
PRODUCT_BRAND := advan
PRODUCT_MODEL := s4a
PRODUCT_MANUFACTURER := advan

ROOTFILES := advanced_meta_init.rc
ROOTFILES += custom_build_verno
ROOTFILES += factory_init.project.rc
ROOTFILES += factory_init.rc
ROOTFILES += fstab.mt6572
ROOTFILES += init.aee.customer.rc
ROOTFILES += init.charging.rc
ROOTFILES += init.fon.rc
ROOTFILES += init.fon.rc
ROOTFILES += init.modem.rc
ROOTFILES += init.no_ssd.rc
ROOTFILES += init.project.rc
ROOTFILES += init.protect.rc
ifeq ($(TARGET_PROVIDES_INIT_RC),true)
ROOTFILES += init.rc
endif
ROOTFILES += init.trace.rc
ROOTFILES += init.usb.rc
ROOTFILES += init.xlog.rc
ROOTFILES += meta_init.modem.rc
ROOTFILES += meta_init.project.rc
ROOTFILES += meta_init.rc
ROOTFILES += ueventd.rc

CONFIGSFILES := android.hardware.microphone.xml
CONFIGSFILES += android.software.live_wallpaper.xml
CONFIGSFILES += com.android.location.provider.xml
CONFIGSFILES += dhcp6c.conf
CONFIGSFILES += dhcp6c.script
CONFIGSFILES += dhcp6cctlkey
CONFIGSFILES += dhcp6cDNS.conf
CONFIGSFILES += dhcp6s.conf
CONFIGSFILES += drm_chmod
CONFIGSFILES += factory.ini
CONFIGSFILES += hid-keyboard.idc
CONFIGSFILES += hid-keyboard.kcm
CONFIGSFILES += hid-keyboard.kl
CONFIGSFILES += media_codecs.xml
CONFIGSFILES += mt6627_fm_cust.cfg
CONFIGSFILES += mtk-kpd.kl
CONFIGSFILES += mtklog-config.prop
CONFIGSFILES += mtk_omx_core.cfg
CONFIGSFILES += oper.lis
CONFIGSFILES += p2p_supplicant.conf
CONFIGSFILES += partition_permission.sh
CONFIGSFILES += player.cfg
CONFIGSFILES += ProjectConfig.mk
CONFIGSFILES += radvd.conf
CONFIGSFILES += throttle.sh
CONFIGSFILES += vold.fstab
CONFIGSFILES += vold.fstab.fat.nand
CONFIGSFILES += vold.fstab.nand
CONFIGSFILES += wpa_supplicant.conf
CONFIGSFILES += xlog-filter-default
CONFIGSFILES += xlog-filter-tags
