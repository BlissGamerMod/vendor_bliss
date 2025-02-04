# Inherit common Razer stuff
$(call inherit-product, vendor/razer/config/common_full.mk)

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME

# Include CM LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/razer/overlay/dictionaries

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Io.ogg \
    ro.config.alarm_alert=CyanAlarm.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
        vendor/razer/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/razer/config/telephony.mk)
