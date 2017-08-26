# WiFi-only device
PRODUCT_PROPERTY_OVERRIDES += \
    ro.radio.noril=true

# WiFi
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    me176c-wifi.rc \
    wpa_supplicant \
    wpa_supplicant.conf \
    hostapd \
    wificond \
    wifilogd

# Firmware and NVRAM config
PRODUCT_COPY_FILES += \
    vendor/linux/firmware/brcm/brcmfmac43362-sdio.bin:system/vendor/firmware/brcm/brcmfmac43362-sdio.bin \
    $(LOCAL_PATH)/configs/nvram.txt:system/vendor/firmware/brcm/brcmfmac43362-sdio.txt
