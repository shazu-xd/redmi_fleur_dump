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

# Inherit from fleur device
$(call inherit-product, device/xiaomi/fleur/device.mk)

PRODUCT_DEVICE := fleur
PRODUCT_NAME := omni_fleur
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11S 4G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="derp_fleur-userdebug 13 TQ3A.230901.001 1696317634 release-keys"

BUILD_FINGERPRINT := Redmi/derp_fleur/fleur:13/TQ3A.230901.001/private10020821:userdebug/release-keys
