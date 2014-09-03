LOCAL_PATH := $(call my-dir)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/advan/s4a/AndroidBoardVendor.mk
