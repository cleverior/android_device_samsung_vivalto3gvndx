LOCAL_PATH := device/samsung/vivalto3gvndx

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/vivalto3gvndx/vivalto3gvndx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is hdpi.  However the platform doesn't
# currently contain all of the bitmaps at hdpi density so
# we do this little trick to fall back to the mdpi version
# if the hdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

$(call inherit-product, build/target/product/full.mk)

# Init files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.scx15_ss.rc:root/init.scx15_ss.rc \
	$(LOCAL_PATH)/init.vivalto3gvn.rc:root/init.vivalto3gvn.rc \
	$(LOCAL_PATH)/init.vivalto3gvn_base.rc:root/init.vivalto3gvn_base.rc \
	$(LOCAL_PATH)/init.wifi.rc:root/init.wifi.rc \
	$(LOCAL_PATH)/fstab.scx15:root/fstab.scx15 \
	$(LOCAL_PATH)/init.board.rc:root/init.board.rc \
	$(LOCAL_PATH)/init.scx15.rc:root/init.scx15.rc \
	$(LOCAL_PATH)/init.scx15.usb.rc:root/init.scx15.usb.rc \
	$(LOCAL_PATH)/ueventd.scx15.rc:root/ueventd.scx15.rc \
        $(LOCAL_PATH)/init.recovery.scx15.rc:root/init.recovery.scx15.rc

PRODUCT_COPY_FILES += \
    	$(LOCAL_PATH)/rootdir/etc/extra.fstab:recovery/root/etc/extra.fstab

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_vivalto3gvndx
PRODUCT_DEVICE := vivalto3gvndx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G313HZ

# Set insecure for root access and device specifics
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
#ro.allow.mock.location=1 \
#ro.debuggable=1 
