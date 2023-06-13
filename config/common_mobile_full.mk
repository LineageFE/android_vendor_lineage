# Inherit common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_mobile.mk)

PRODUCT_SIZE := full

# Include {Lato,Rubik} fonts
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)

# Apps
PRODUCT_PACKAGES += \
    Eleven \
    Etar \
    Profiles \
    Recorder \
    Seedvault

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

ifneq ($(TARGET_EXCLUDES_AUDIOFX),true)
PRODUCT_PACKAGES += \
    AudioFX
endif

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd

# Fonts
PRODUCT_COPY_FILES += \
    vendor/lineage/fonts/GoogleSans-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Italic.ttf \
    vendor/lineage/fonts/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSans-Regular.ttf \
    vendor/lineage/fonts/GoogleSansClock-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/GoogleSansClock-Regular.ttf \
    vendor/lineage/fonts/HarmonyOS-Sans.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS-Sans.ttf \
    vendor/lineage/fonts/HarmonyOS-Sans-Italic.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/HarmonyOS-Sans-Italic.ttf \
    vendor/lineage/fonts/Inter-VF.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/Inter-VF.ttf \
    vendor/lineage/fonts/OppoSans-En-Regular.ttf:$(TARGET_COPY_OUT_PRODUCT)/fonts/OppoSans-En-Regular.ttf

PRODUCT_PACKAGES += \
    fonts_customization.xml \
    FontLatoOverlay \
    FontRubikOverlay \
    FontGoogleSansOverlay \
    FontGoogleSansLatoOverlay \
    FontInterOverlay \
    FontHarmonySansOverlay \
    FontOppoSansOverlay

# Clocks
PRODUCT_PACKAGES += \
    SystemUIClocks-BigNum \
    SystemUIClocks-Calligraphy \
    SystemUIClocks-Flex \
    SystemUIClocks-Growth \
    SystemUIClocks-Inflate \
    SystemUIClocks-Metro \
    SystemUIClocks-NumOverlap \
    SystemUIClocks-Weather

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/lineage/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/lineage/overlay/dictionaries
