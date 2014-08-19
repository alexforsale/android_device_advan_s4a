LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/advan/s4a/AndroidBoardVendor.mk

################## rootdir files #####################

include $(CLEAR_VARS)
LOCAL_MODULE		:= advanced_meta_init.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= custom_build_verno
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= factory_init.project.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= factory_init.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= fstab
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.aee.customer.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.charging.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.fon.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.modem.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.no_ssd.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.project.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.protect.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# hilangkan tanda # dibawah ini dan taruh init.rc yang akan digunakan di folder rootdir
ifeq ($(TARGET_PROVIDES_INIT_RC),true)
include $(CLEAR_VARS)
LOCAL_MODULE		:= init.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
endif # TARGET_PROVIDES_INIT_RC

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.trace.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.usb.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.xlog.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= meta_init.modem.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= meta_init.project.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= meta_init.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= ueventd.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= rootdir/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

################## end rootdir files #####################

################## configs files #####################

include $(CLEAR_VARS)
LOCAL_MODULE		:= android.hardware.microphone.xml
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc/permissions
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= dhcp6c.conf
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc/wide-dhcpv6
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= dhcp6c.script
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc/wide-dhcpv6
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= dhcp6cctlkey
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc/wide-dhcpv6
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= dhcp6cDNS.conf
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc/wide-dhcpv6
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= dhcp6s.conf
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc/wide-dhcpv6
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= drm_chmod
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= factory.ini
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= hid-keyboard.idc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/usr/idc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= hid-keyboard.kcm
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/usr/keychars
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= hid-keyboard.kl
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/usr/keylayout
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= media_codecs.xml
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= mtk-kpd.kl
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/usr/keylayout
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= mtklog-config.prop
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= mtk_omx_core.cfg
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= oper.lis
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc/ril
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= p2p_supplicant.conf
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc/wifi
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= partition_permission.sh
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= player.cfg
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= ProjectConfig.mk
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/data/misc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= throttle.sh
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= vold.fstab
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= vold.fstab.fat.nand
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= vold.fstab.nand
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= wpa_supplicant.conf
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc/wifi
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= xlog-filter-default
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= xlog-filter-tags
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= configs/$(LOCAL_MODULE)
LOCAL_MODULE_PATH	:= $(TARGET_OUT)/etc
include $(BUILD_PREBUILT)

################## end configs files #####################

