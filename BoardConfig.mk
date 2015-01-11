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
BOARD_BOOTIMAGE_PARTITION_SIZE 			:= 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE 		:= 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE 		:= 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE 		:= 0x105c0000
BOARD_FLASH_BLOCK_SIZE 				:= 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR	:= $(LOCAL_PATH)/bluetooth

#kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN			:= arm-eabi-4.7
TARGET_KERNEL_CONFIG 				:= vivalto3g-native_hw04_defconfig
TARGET_KERNEL_SOURCE				:= kernel/samsung/vivalto3gvndx/kernel
#TARGET_PREBUILT_KERNEL				:= $(LOCAL_PATH)/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL 		:= $(LOCAL_PATH)/kernel
#TARGET_RECOVERY_INITRC	 			:= $(LOCAL_PATH)/recovery/init.recovery.scx15.rc
#TARGET_RECOVERY_INITRC				:= $(LOCAL_PATH)/recovery/init.rc


# Recovery
TARGET_RECOVERY_FSTAB 				:= $(LOCAL_PATH)/vivalto3gvndx.fstab
#BOARD_XHDPI_RECOVERY 				:= true
#BOARD_USE_CUSTOM_RECOVERY_FONT 		:= "<font_7x16.h>"
BOARD_CUSTOM_RECOVERY_KEYMAPPING 		:= ../../$(LOCAL_PATH)/recovery/recovery_keys.c
BOARD_HAS_NO_REAL_SDCARD 			:= true
BOARD_HAS_NO_SELECT_BUTTON 			:= true
#BOARD_TOUCH_RECOVERY 				:= true
DEVICE_RESOLUTION 				:= 480x800
INTERNAL_STORAGE_PATH 				:= "/data/media/0"
INTERNAL_STORAGE_MOUNT_POINT 			:= "data"
EXTERNAL_STORAGE_PATH 				:= "/sdcard"
EXTERNAL_STORAGE_MOUNT_POINT 			:= "sdcard"
RECOVERY_GRAPHICS_USE_LINELENGTH 		:= true
TARGET_RECOVERY_PIXEL_FORMAT 			:= "RGBX_8888"

# Recovery Variant
#RECOVERY_VARIANT 				:= recovery
#RECOVERY_VARIANT 				:= recovery-philz
#RECOVERY_VARIANT 				:= recovery-twrp
#RECOVERY_VARIANT 				:= recovery-carliv

# assert
TARGET_OTA_ASSERT_DEVICE 			:= SM-G313HZ, sm-g313hz, vivalto3gvn, vivalto3gvndx

# TWRP
#RECOVERY_SDCARD_ON_DATA 			:= true
#RECOVERY_GRAPHICS_USE_LINELENGTH 		:= true
TW_INTERNAL_STORAGE_PATH			:= "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT 		:= "data"
TW_EXTERNAL_STORAGE_PATH 			:= "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT 		:= "sdcard"
TWHAVE_SELINUX 					:= true
