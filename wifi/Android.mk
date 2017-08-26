LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := me176c-wifi.rc
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_ETC)/init
include $(BUILD_PREBUILT)

WPA_SUPPL_DIR = external/wpa_supplicant_8

# Private driver command implementation
include $(CLEAR_VARS)
LOCAL_MODULE := lib_driver_cmd_brcmfmac
LOCAL_VENDOR_MODULE := true
LOCAL_C_INCLUDES := $(WPA_SUPPL_DIR)/src
LOCAL_SRC_FILES := driver_cmd_nl80211.c
include $(BUILD_STATIC_LIBRARY)

# wpa_supplicant.conf
WIFI_DRIVER_SOCKET_IFACE := wlan0
include $(WPA_SUPPL_DIR)/wpa_supplicant/wpa_supplicant_conf.mk
