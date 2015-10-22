LOCAL_PATH := device/samsung/vivalto3gvndx
# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/vivalto3gvndx/vivalto3gvndx-vendor.mk)

# overrlay import
#DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay       #currently disabled arent where we improve this to ride up

# This device is hdpi.  However the platform doesn't
# currently contain all of the bitmaps at hdpi density so
# we do this little trick to fall back to the mdpi version
# if the hdpi doesn't exist.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# languages
PRODUCT_LOCALES := en_US fr_FR it_IT es_ES de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN

#PRODUCT_LOCALES += hdpi

$(call inherit-product, build/target/product/full.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/vivalto3gvndx/init.scx15_ss.rc:root/init.scx15_ss.rc \
	device/samsung/vivalto3gvndx/init.vivalto3gvn.rc:root/init.vivalto3gvn.rc \
	device/samsung/vivalto3gvndx/init.vivalto3gvn_base.rc:root/init.vivalto3gvn_base.rc \
	device/samsung/vivalto3gvndx/init.wifi.rc:root/init.wifi.rc \
	device/samsung/vivalto3gvndx/fstab.scx15:root/fstab.scx15 \
	device/samsung/vivalto3gvndx/init.board.rc:root/init.board.rc \
	device/samsung/vivalto3gvndx/init.scx15.rc:root/init.scx15.rc \
	device/samsung/vivalto3gvndx/init.scx15.usb.rc:root/init.scx15.usb.rc \
	device/samsung/vivalto3gvndx/ueventd.scx15.rc:root/ueventd.scx15.rc \
    device/samsung/vivalto3gvndx/init.recovery.scx15.rc:root/init.recovery.scx15.rc

PRODUCT_COPY_FILES += \
    	device/samsung/vivalto3gvndx/rootdir/etc/extra.fstab:recovery/root/etc/extra.fstab

# Override phone-hdpi-512-dalvik-heap to match value on stock
# - helps pass CTS com.squareup.okhttp.internal.spdy.Spdy3Test#tooLargeDataFrame)
# (property override must come before included property)
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=56m 

# Dalvik heap config
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set insecure for root access and device specifics
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
#ro.allow.mock.location=1 \
#ro.debuggable=1 

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    #camera2.portability.force_api=1 \
    #ro.multisim.simslotcount=2 \
    #persist.radio.multisim.config=dsds \    
	ro.secure=0 \
    ro.adb.secure=0 \
    ro.debuggable=1 \
    persist.service.adb.enable=1 \
	service.adb.root=1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_vivalto3gvndx
PRODUCT_DEVICE := vivalto3gvndx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G313HZ