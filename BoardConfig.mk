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

# include versi proprietary
-include vendor/advan/s4a/BoardConfigVendor.mk

TARGET_BOARD_INFO_FILE := device/advan/s4a/board-info.txt

# ramdisk
TARGET_PROVIDES_INIT_RC := true
TARGET_PREBUILT_KERNEL := device/advan/s4a/kernel
TARGET_RECOVERY_KERNEL := device/advan/s4a/kernel/recovery/recovery_kernel

# makefile khusus untuk boot.img mediatek
BOARD_CUSTOM_BOOTIMG_MK := device/advan/s4a/prebuilt_boot.mk

TARGET_BOARD_PLATFORM := mt6572
# TARGET_BOARD_PLATFORM_GPU := ARM-Mali-400 MP
TARGET_BOOTLOADER_BOARD_NAME := s4a

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_USERIMAGES_USE_EXT4 := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

## XXX: didapat melalui terminal emulator / adb shell dengan ketik
## $ cat /proc/dumchar_info
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6488064 # todo: cari value yang pas
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x28a00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x52c00000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x17800000 
BOARD_FLASH_BLOCK_SIZE := 131072

# didapat ketika melakukan unpack boot.img
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_UMS_LUNFILE := /sys/devices/platform/mt_usb/gadget/lun%d/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/advan/s4a/configs/egl.cfg

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"

# Skip build droiddoc (untuk menghemat waktu build)
BOARD_SKIP_ANDROID_DOC_BUILD := true
# agar size image lebih kecil
SMALLER_FONT_FOOTPRINT := true

# TWRP
DEVICE_RESOLUTION := 480x800
TW_BRIGHTNESS_PATH := "sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
