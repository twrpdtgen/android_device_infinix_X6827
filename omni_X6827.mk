#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X6827 device
$(call inherit-product, device/infinix/X6827/device.mk)

PRODUCT_DEVICE := X6827
PRODUCT_NAME := omni_X6827
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := HOT 20S
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_X6827-eng 99.87.36 RQ1A.210205.004 eng.runner.20230803.170001 test-keys"

BUILD_FINGERPRINT := Infinix/twrp_X6827/X6827:99.87.36/RQ1A.210205.004/runner08031654:eng/test-keys
