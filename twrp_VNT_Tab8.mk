#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from VNT_Tab8 device
$(call inherit-product, device/along/VNT_Tab8/device.mk)

PRODUCT_DEVICE := VNT_Tab8
PRODUCT_NAME := twrp_VNT_Tab8
PRODUCT_BRAND := VNPTTechnology
PRODUCT_MODEL := VNT_Tab8
PRODUCT_MANUFACTURER := along

PRODUCT_GMS_CLIENTID_BASE := android-along

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_tb8765ap1_64_bsp-user 11 RP1A.200720.011 mp1V81831 release-keys"

BUILD_FINGERPRINT := VNPTTechnology/VNT_Tab8/VNT_Tab8:11/RP1A.200720.011/3521230224:user/release-keys
