## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := vivalto3gvndx

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/vivalto3gvndx/device_vivalto3gvndx.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vivalto3gvndx
PRODUCT_NAME := cm_vivalto3gvndx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G313HZ
PRODUCT_MANUFACTURER := samsung
