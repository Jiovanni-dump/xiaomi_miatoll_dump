#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from miatoll device
$(call inherit-product, device/xiaomi/miatoll/device.mk)

PRODUCT_DEVICE := miatoll
PRODUCT_NAME := lineage_miatoll
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Miatoll
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aospa_miatoll-user 14 UKQ1.231207.002 eng.jake.20240122.030006 release-keys"

BUILD_FINGERPRINT := Xiaomi/aospa_miatoll/miatoll:14/UKQ1.231207.002/jake01220257:user/release-keys
