$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/vivalto3gvndx/vivalto3gvndx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/vivalto3gvndx/overlay

LOCAL_PATH := device/samsung/vivalto3gvndx
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/vivalto3gvndx/init.scx15_ss.rc:root/init.scx15_ss.rc \
	device/samsung/vivalto3gvndx/init.vivalto3gvn.rc:root/init.vivalto3gvn.rc \
	device/samsung/vivalto3gvndx/init.vivalto3gvn_base.rc:root/init.vivalto3gvn_base.rc \
	device/samsung/vivalto3gvndx/init.wifi.rc:root/init.wifi.rc \
	device/samsung/vivalto3gvndx/ueventd.scx15.rc:root/ueventd.scx15.rc \
        device/samsung/vivalto3gvndx/init.recovery.scx15.rc:root/init.recovery.scx15.rc \
	#device/samsung/vivalto3gvndx/fstab.rhea_ss_corsica:root/fstab.rhea_ss_corsica 

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_vivalto3gvndx
PRODUCT_DEVICE := vivalto3gvndx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G313HZ

# Set insecure for root access and device specifics
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
#ro.allow.mock.location=1 \
#ro.debuggable=1 \
