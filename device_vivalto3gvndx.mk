LOCAL_PATH := device/samsung/vivalto3gvndx
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/vivalto3gvndx/vivalto3gvndx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is hdpi.  However the platform doesn't
# currently contain all of the bitmaps at hdpi density so
# we do this little trick to fall back to the mdpi version
# if the hdpi doesn't exist.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# languages
PRODUCT_LOCALES := en_US fr_FR it_IT es_ES de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN

PRODUCT_LOCALES += hdpi

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

# Override phone-hdpi-512-dalvik-heap to match value on stock
# - helps pass CTS com.squareup.okhttp.internal.spdy.Spdy3Test#tooLargeDataFrame)
# (property override must come before included property)
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=56m \

# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set insecure for root access and device specifics
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
#ro.allow.mock.location=1 \
#ro.debuggable=1 

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_vivalto3gvndx
PRODUCT_DEVICE := vivalto3gvndx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G313HZ
