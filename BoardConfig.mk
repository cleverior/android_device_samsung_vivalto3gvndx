# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := device/samsung/vivalto3gvndx
DEVICE_FOLDER := device/samsung/vivalto3gvndx

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/vivalto3gvndx/BoardConfigVendor.mk

TARGET_ARCH 					:= arm
TARGET_NO_BOOTLOADER 				:= true
TARGET_BOARD_PLATFORM 				:= scx15
TARGET_BOARD_PLATFORM_GPU 			:= mali-400 MP
TARGET_CPU_ABI 					:= armeabi-v7a
TARGET_CPU_ABI2 				:= armeabi
TARGET_ARCH_VARIANT 				:= armv7-a-neon
TARGET_CPU_VARIANT 				:= cortex-a7
TARGET_CPU_SMP 					:= true
ARCH_ARM_HAVE_TLS_REGISTER 			:= true

TARGET_BOOTLOADER_BOARD_NAME 			:= vivalto3gvndx

BOARD_KERNEL_CMDLINE 				:= console=ttyS1,115200n8
BOARD_KERNEL_BASE 				:= 0x00000000
BOARD_KERNEL_PAGESIZE 				:= 2048

BOARD_HAS_DOWNLOAD_MODE			:= true

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE 			:= 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE 		:= 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE 		:= 4372892160
BOARD_USERDATAIMAGE_PARTITION_SIZE 		:= 2457862144
BOARD_FLASH_BLOCK_SIZE 				:= 131072

BOARD_HAS_LARGE_FILESYSTEM 			:= true

BOARD_CACHE_DEVICE 				:= /dev/block/mmcblk0p17
BOARD_CACHE_FILESYSTEM 				:= ext4
BOARD_CACHE_FILESYSTEM_OPTIONS 			:= rw
BOARD_SYSTEM_DEVICE 				:= /dev/block/mmcblk0p18
BOARD_SYSTEM_FILESYSTEM 			:= ext4
BOARD_SYSTEM_FILESYSTEM_OPTIONS 		:= rw
BOARD_DATA_DEVICE 				:= /dev/block/mmcblk0p20
BOARD_DATA_FILESYSTEM 				:= ext4
BOARD_DATA_FILESYSTEM_OPTIONS 			:= rw

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR	:= device/samsung/vivalto3gvndx/bluetooth
BOARD_HAVE_BLUETOOTH 				:= true
BOARD_BLUEDROID_VENDOR_CONF 			:= device/samsung/vivalto3gvndx/bluetooth/libbt_vndcfg.txt

# Hardware rendering
USE_OPENGL_RENDERER 				:= true
BOARD_EGL_CFG 					:= device/samsung/vivalto3gvndx/egl.cfg
BOARD_USE_MHEAP_SCREENSHOT                      := true
BOARD_EGL_WORKAROUND_BUG_10194508               := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK           := true
BOARD_EGL_NEEDS_FNW 				:= true
COMMON_GLOBAL_CFLAGS 				+= -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS                            += -DMR0_CAMERA_BLOB -DEGL_NEEDS_FNW -DMR0_AUDIO_BLOB -DSAMSUNG_BCM_AUDIO_BLOB -DSCX15_HWC

# kernel
TARGET_PREBUILT_KERNEL                          := $(DEVICE_FOLDER)/prebuilt/kernel

# Recovery
BOARD_HAS_NO_REAL_SDCARD 			:= true
BOARD_HAS_NO_SELECT_BUTTON 			:= true
#BOARD_TOUCH_RECOVERY 				:= true
TARGET_RECOVERY_PIXEL_FORMAT 			:= "RGBX_8888"

# assert
#TARGET_OTA_ASSERT_DEVICE 			:= vivalto3gvndx

# graphics
## TARGET_GPU_PP_CORE := 2
#USE_SPRD_HWCOMPOSER                             := true
USE_OPENGL_RENDERER                             := true
USE_OVERLAY_COMPOSER_GPU                        := true
DEVICE_FORCE_VIDEO_GO_OVERLAYCOMPOSER           := true

# TWRP
#RECOVERY_SDCARD_ON_DATA 			:= true
RECOVERY_GRAPHICS_USE_LINELENGTH 		:= true
SP1_NAME 					:= "internal_sd"
SP1_BACKUP_METHOD 				:= files
SP1_MOUNTABLE 					:= 1
TW_INTERNAL_STORAGE_PATH 			:= "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT 		:= "data"
TW_EXTERNAL_STORAGE_PATH 			:= "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT 		:= "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE 			:= true
TW_FLASH_FROM_STORAGE 				:= true
TW_NO_REBOOT_BOOTLOADER 			:= true
TW_CUSTOM_CPU_TEMP_PATH				:= "/sys/devices/platform/sec-thermistor/temperature"
TWHAVE_SELINUX 					:= true
TARGET_RECOVERY_INITRC 				:= device/samsung/vivalto3gvndx/etc/init.rc
TARGET_RECOVERY_FSTAB 				:= device/samsung/vivalto3gvndx/etc/stock_recovery.fstab
TW_HAS_DOWNLOAD_MODE				:= true
DEVICE_RESOLUTION 				:= 480x800
BOARD_USE_CUSTOM_RECOVERY_FONT 			:= \"roboto_10x18.h\"

# Philz
TARGET_SCREEN_HEIGHT				:= 800
TARGET_SCREEN_WIDTH				:= 480
