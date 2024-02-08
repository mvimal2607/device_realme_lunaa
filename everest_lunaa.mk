# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lunaa device
$(call inherit-product, device/realme/lunaa/device.mk)

# Inherit some common everest Stuff
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

# Environment Flags
TARGET_FACE_UNLOCK_SUPPORTED := true

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 720

# Everest Maintainer Stuff
EVEREST_BUILD_TYPE := official
EVEREST_UDFPS_ANIMATIONS := true
EVEREST_MAINTAINER := Vimal😊

PRODUCT_NAME := everest_lunaa
PRODUCT_DEVICE := lunaa
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3360

PRODUCT_SYSTEM_NAME := RE54ABL1
PRODUCT_SYSTEM_DEVICE := RE54ABL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3360-user 13 TP1A.220905.001 R.136e3d6-af7c-10d436 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_NAME) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3360/RE54ABL1:13/TP1A.220905.001/R.136e3d6-af7c-10d436:user/release-keys
