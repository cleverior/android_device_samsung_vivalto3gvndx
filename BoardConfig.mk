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
KERNEL_PATH := kernel/samsung/vivalto3gvndx/

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/vivalto3gvndx/BoardConfigVendor.mk

TARGET_ARCH 					:= arm
TARGET_NO_BOOTLOADER 				:= true
TARGET_BOARD_PLATFORM 				:= scx15
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

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE 			:= 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE 		:= 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE 		:= 1111490560
BOARD_USERDATAIMAGE_PARTITION_SIZE 		:= 2457862144
BOARD_FLASH_BLOCK_SIZE 				:= 131072

BOARD_HAS_LARGE_FILESYSTEM 			:= true

#boot = mmcblk0p11 = 8 MB
#recovery = mmcblk0p12 = 8 MB
#system = mmcblk0p18 = 1 GB
#userdata/data = mmcblk0p20 = 2.2 GB

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
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR	:= $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH 				:= true
BOARD_BLUEDROID_VENDOR_CONF 			:= $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt

# kernel
#TARGET_KERNEL_CUSTOM_TOOLCHAIN			:= arm-eabi-4.7
#TARGET_KERNEL_CONFIG 				:= vivalto3g-native_hw04_defconfig
#TARGET_KERNEL_SOURCE				:= $(KERNEL_PATH)/common
TARGET_PREBUILT_KERNEL				:= $(LOCAL_PATH)/kernel
#TARGET_PREBUILT_RECOVERY 			:= $(LOCAL_PATH)/recovery
#TARGET_PREBUILT_RECOVERY_KERNEL 		:= $(LOCAL_PATH)/recovery
#TARGET_RECOVERY_INITRC	 			:= $(LOCAL_PATH)/recovery/init.recovery.scx15.rc

# Recovery
#BOARD_XHDPI_RECOVERY 				:= true
#BOARD_USE_CUSTOM_RECOVERY_FONT 		:= "<font_7x16.h>"
BOARD_CUSTOM_RECOVERY_KEYMAPPING 		:= ../../$(LOCAL_PATH)/etc/recovery_keys.c
BOARD_HAS_NO_REAL_SDCARD 			:= true
BOARD_HAS_NO_SELECT_BUTTON 			:= true
#BOARD_TOUCH_RECOVERY 				:= true
DEVICE_RESOLUTION 				:= 480x800
INTERNAL_STORAGE_PATH 				:= "/data/media/0"
INTERNAL_STORAGE_MOUNT_POINT 			:= "data"
EXTERNAL_STORAGE_PATH 				:= "/sdcard"
EXTERNAL_STORAGE_MOUNT_POINT 			:= "sdcard"
TARGET_RECOVERY_PIXEL_FORMAT 			:= "RGBX_8888"

# Recovery Variant
#RECOVERY_VARIANT 				:= recovery
#RECOVERY_VARIANT 				:= recovery-philz
#RECOVERY_VARIANT 				:= recovery-twrp
#RECOVERY_VARIANT 				:= recovery-carliv
#RECOVERY_VARIANT 				:= recovery-twrp

# assert
TARGET_OTA_ASSERT_DEVICE 			:= SM-G313HZ, sm-g313hz, vivalto3gvn, vivalto3gvndx

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
TWHAVE_SELINUX 					:= true
TARGET_RECOVERY_INITRC 				:= $(LOCAL_PATH)/init.rc
TARGET_RECOVERY_FSTAB 				:= $(LOCAL_PATH)/etc/vivalto3gvndx.fstab
TW_CPU_TEMP					:= true
TW_HAS_DOWNLOAD_MODE				:= true

# Philz
TARGET_SCREEN_HEIGHT				:= 800
TARGET_SCREEN_WIDTH				:= 480
