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

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/advan/s4a/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH += device/advan/s4a/include

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := mt6572
TARGET_BOARD_PLATFORM_GPU := ARM-Mali-400 MP
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

TARGET_BOOTLOADER_BOARD_NAME := s4a

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_CUSTOM_BOOTIMG_MK := device/advan/s4a/prebuilt_boot.mk
#TARGET_PROVIDES_INIT_RC := true

TARGET_PREBUILT_KERNEL := device/advan/s4a/kernel

## XXX: didapat melalui terminal emulator / adb shell dengan ketik
## $ cat /proc/dumchar_info
#BOARD_PROTECT_FIMAGE_PARTITION_SIZE:=10M
#BOARD_PROTECT_SIMAGE_PARTITION_SIZE:=10M
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1388314624
BOARD_CACHEIMAGE_PARTITION_SIZE := 394264576
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_FATIMAGE_PARTITION_SIZE:=0M
BOARD_FLASH_BLOCK_SIZE := 131072

# eMMC support
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# patch commit 01b1da4 dari github.com/BSydz-MTK/android_bootable_recovery
# tambahan support untuk partisi mediatek 
CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
CWM_EMMC_BOOT_DEVICE_SIZE := 6291456
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
CWM_EMMC_RECOVERY_DEVICE_SIZE := 6291456
CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
CWM_EMMC_UBOOT_DEVICE_SIZE := 6291456

# Recovery
TARGET_PREBUILT_RECOVERY_KERNEL := device/advan/s4a/recovery-kernel
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/mt_usb/gadget/lun0/file"

# bluetooth
BOARD_HAVE_BLUETOOTH  := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/advan/s4a/bluetooth

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/advan/s4a/configs/egl.cfg

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true

# MTK, Infinity, 20090720, Add WiFi {
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_P2P_SUPPLICANT_DRIVER := NL80211
HAVE_CUSTOM_WIFI_DRIVER_2 := true
HAVE_INTERNAL_WPA_SUPPLICANT_CONF := true
HAVE_CUSTOM_WIFI_HAL := mediatek
WPA_SUPPLICANT_VERSION := VER_0_6_X
P2P_SUPPLICANT_VERSION := VER_0_8_X
# MTK, Infinity, 20090720, Add WiFi }

# untuk ro.product.device dan ro.build.product stock rom
TARGET_OTA_ASSERT_DEVICE := Vandroid,s4a
