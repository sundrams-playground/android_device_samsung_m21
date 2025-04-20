#
# Copyright (C) 2023 The LineageOS Project
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

DEVICE_PATH := device/samsung/m30s

# Inherit from the common tree
include device/samsung/universal9611-common/BoardConfig-p.mk

# Inherit optional vendor BoardConfig
include vendor/samsung/m30s/BoardConfigVendor.mk

# OTA Asserts
TARGET_OTA_ASSERT_DEVICE := m30s,m307f,m307fn

## Partitions Sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 57671680
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67633152
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800

## Camera
SOONG_CONFIG_NAMESPACES += samsungCameraVars
SOONG_CONFIG_samsungCameraVars += extra_ids
SOONG_CONFIG_samsungCameraVars_extra_ids := 20,23,50,52

## Filesystem config
include device/samsung/universal9611-common/fsconfig_legacy.mk

## Prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
