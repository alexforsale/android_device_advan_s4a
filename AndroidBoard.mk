LOCAL_PATH := $(call my-dir)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/advan/s4a/AndroidBoardVendor.mk

################## rootdir files #####################

include $(CLEAR_VARS)
LOCAL_MODULE		:= custom_build_verno
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
LOCAL_MODULE		:= drm_chmod
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

################## end configs files #####################

# include mediatek mt6572 common files
-include device/advan/mt6572-common/AndroidBoard.mk

