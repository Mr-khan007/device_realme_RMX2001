#
# Copyright (C) 2020 Android Open Source Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2001/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/kangos/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := kangos_RMX2001
PRODUCT_DEVICE := RMX2001
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme G95 Series
PRODUCT_MANUFACTURER := realme

# Kangos Properties
KANGOS_BUILDTYPE := UNOFFICIAL 
PRODUCT_PRODUCT_PROPERTIES += \
  ro.kangos.maintainer=Mr-Khan007 \
  ro.kangos.cpu=Helio G95

USE_GAPPS := true
TARGET_INCLUDE_AOSP_REPLACEMENT := true

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-oppo

