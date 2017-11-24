# CM mediatek powerHAL
PRODUCT_PACKAGES += \
    power.default \
    power.$(TARGET_BOARD_PLATFORM) \
    vendor.lineage.power@1.0-impl
    #android.hardware.power@1.0-impl // non-lineage imp

#TARGET_TAP_TO_WAKE_NODE=

# Mtk symbols & shim
PRODUCT_PACKAGES += \
    libshim_agps \
    libshim_asc \
    libshim_gui \
    libshim_snd \
    libshim_ui \
    libshim_xlog

# Vibrator HAL
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service.mediatek

# Doze
PRODUCT_PACKAGES += \
    MeizuDoze
