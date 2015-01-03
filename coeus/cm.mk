# coeus vendor blobs
$(call inherit-product-if-exists, device/zte/coeus/coeus-vendor-blobs.mk)

# msm8x30 common vendor blobs
$(call inherit-product-if-exists, device/zte/msm8x30-common/msm8x30-common-vendor-blobs.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/zte/coeus/full_coeus.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=coeus TARGET_DEVICE=coeus BUILD_FINGERPRINT="zte/coeus/coeus:4.2.2/JDQ39/I9195XXUAMG4:user/release-keys" PRIVATE_BUILD_DESC="coeus-user 4.2.2 JDQ39 I9195XXUAMG4 release-keys"

PRODUCT_DEVICE := coeus
PRODUCT_NAME := cm_coeus
