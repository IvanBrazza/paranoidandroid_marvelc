PRODUCT_RELEASE_NAME := PARODUDE

# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/htc/marvelc_pa/device_marvelc.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := marvelc
PRODUCT_NAME := cm_marvelc
PRODUCT_BRAND := htc_marvelc
PRODUCT_MODEL := marvelc
PRODUCT_MANUFACTURER := HTC

PRODUCT_VERSION_DEVICE_RELEASE := BETA1
PRODUCT_VERSION_DEVICE_SPECIFIC := -PARODUDE-$(PRODUCT_VERSION_DEVICE_RELEASE)

# CM_RELEASE := true
CM_BUILDTYPE := UNOFFICIAL
CM_EXTRAVERSION := PARODUDE-$(PRODUCT_VERSION_DEVICE_RELEASE)

BUILD_ID := PARODUDE-$(PRODUCT_VERSION_DEVICE_RELEASE)-$(shell date -u +%d)-$(shell date -u +%m)-$(shell date -u +%Y)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_marvel BUILD_ID=$(BUILD_ID) BUILD_DISPLAY_ID=$(BUILD_ID) BUILD_FINGERPRINT=cyanogenmod/htc_marvel/marvel:4.0.4/$(BUILD_ID)/0.1:user/release-keys PRIVATE_BUILD_DESC="0.1 PARODUDE release-keys"

# GooManager Stuffs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=dudeman1996 \
    ro.goo.rom=marvelc_paranoidandroid \
    ro.goo.board=marvelc \
    ro.goo.version=1
PRODUCT_COPY_FILES += \
    device/htc/marvelc_pa/app/GooManager.apk:/system/app/GooManager.apk

#ROM Manager Stuffs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=dudeman1996
