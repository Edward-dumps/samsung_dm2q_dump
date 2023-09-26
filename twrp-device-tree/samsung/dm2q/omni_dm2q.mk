#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from dm2q device
$(call inherit-product, device/samsung/dm2q/device.mk)

PRODUCT_DEVICE := dm2q
PRODUCT_NAME := omni_dm2q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S9160
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dm2qzhx-user 13 TP1A.220624.014 S9160ZHU2AWH1 release-keys"

BUILD_FINGERPRINT := samsung/dm2qzhx/dm2q:13/TP1A.220624.014/S9160ZHU2AWH1:user/release-keys
