#
# Copyright (C) 2018-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)

# Inherit some common octavi stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
EXTRA_UDFPS_ANIMATIONS := false
IS_PHONE := true

# Maintainer Flag
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.octavi.maintainer=LEO

# Unofficial
OCTAVI_MAINTAINER := LEO
OCTAVI_BUILD_TYPE := UNOFFICIAL
BUILD_USERNAME := LEO
BUILD_HOSTNAME := Octavi

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := octavi_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := beryllium

BUILD_FINGERPRINT := "Xiaomi/beryllium/beryllium:10/QKQ1.190828.002/V12.0.3.0.QEJMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="beryllium-user 10 QKQ1.190828.002 V12.0.3.0.QEJMIXM release-keys" \
    TARGET_PRODUCT="beryllium"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
