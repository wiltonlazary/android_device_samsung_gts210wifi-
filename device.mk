$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


DEVICE_PACKAGE_OVERLAYS += device/samsung/gts210wifixx/overlay

LOCAL_PATH := device/samsung/gts210wifixx
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/selinux/file_contexts:recovery/root/prebuilt_file_contexts \
	$(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
	$(LOCAL_PATH)/init.recovery.universal5433.rc:root/init.recovery.universal5433.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := samsung_gts210wifixx
PRODUCT_BRAND := Samsung

include $(CLEAR_VARS)
LOCAL_MODULE := init2
LOCAL_OVERRIDE_PACKAGES := init
