LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := hwcomposer.me176c
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_VENDOR_MODULE := true
LOCAL_SRC_FILES := hwcomposer.c
LOCAL_SHARED_LIBRARIES := libdrm liblog libhardware
LOCAL_CFLAGS := -Werror
include $(BUILD_SHARED_LIBRARY)
