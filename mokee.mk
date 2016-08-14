# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/verity.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/nx531j/device_nx531j.mk)

# Enhanced NFC
$(call inherit-product, vendor/mk/config/nfc_enhanced.mk)

# Inherit some common MoKee stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := mk_nx531j
PRODUCT_DEVICE := nx531j
PRODUCT_MANUFACTURER := nubia
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX531J

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=NX531J PRODUCT_NAME=NX531J

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=nubia/NX531J/NX531J:6.0.1/MMB29M/nubia07271842:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += \
    ro.mk.maintainer=XiNGRZ