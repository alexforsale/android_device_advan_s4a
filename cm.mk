## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := s4a

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/advan/s4a/device_s4a.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s4a
PRODUCT_NAME := cm_s4a
PRODUCT_BRAND := advan
PRODUCT_MODEL := s4a
PRODUCT_MANUFACTURER := advan
