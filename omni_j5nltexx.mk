#$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)



# Grab needed APNs
PRODUCT_COPY_FILES := vendor/omni/prebuilt/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)


# Inherit device configuration
$(call inherit-product, device/samsung/j5nltexx/full_j5nltexx.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := omni_j5nltexx
PRODUCT_DEVICE := j5nltexx
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=j5nltexx TARGET_DEVICE=j5nlte
