# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Kernel
TARGET_KERNEL_CONFIG := cm_coeus_defconfig


# Inherit from common msm8x30-common
include device/zte/msm8x30-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/zte/coeus/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := Z998,coeus

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true

#Qcom Enhancements
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true


# Graphics
TARGET_QCOM_DISPLAY_VARIANT := caf
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_CPU_VARIANT := krait
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 6
TARGET_KRAIT_BIONIC_PLDSIZE := 128
BOARD_USE_QCOM_PMEM := true
TARGET_USES_ION := true
TARGET_HARDWARE_3D := true
BOARD_USES_GENLOCK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true


# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_QCOM_MEDIA_VARIANT := caf
TARGET_DISPLAY_USE_RETIRE_FENCE := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_PROVIDES_CAMERA_HAL := true
TARGET_PROVIDES_LIBCAMERA := true

#skip webview
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := true

BOARD_EGL_CFG := device/zte/coeus/prebuilts/lib/egl/egl.cfg

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/zte/coeus/releasetools/ota_from_target_files
