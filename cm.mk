# Boot animation
TARGET_SCREEN_HEIGHT := 1440
TARGET_SCREEN_WIDTH := 2560

# Inherit some common CM stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/bliss/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

DEVICE_PACKAGE_OVERLAYS += device/moto/shamu/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bliss_shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:5.0.1/LRX22C/1602158:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 5.0.1 LRX22C 1602158 release-keys"
