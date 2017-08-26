# Audio HAL
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-service \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    me176c-audio.rc \
    audio.primary.pfw \
    audio_policy_configuration.xml \
    AudioParameterFramework.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.audio.primary=pfw \
    audio.device.name=bytcrrt5640

# Firmware
PRODUCT_COPY_FILES += \
    vendor/linux/firmware/intel/fw_sst_0f28.bin:system/vendor/firmware/intel/fw_sst_0f28.bin

# Debug tools
PRODUCT_PACKAGES_DEBUG += \
    tinymix
