LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.power-service-mediatek
LOCAL_VENDOR_MODULE := true
LOCAL_MULTILIB := 64
LOCAL_VINTF_FRAGMENTS := power-mtk.xml
LOCAL_SRC_FILES := Power.cpp

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libbinder_ndk \
    libpowerhal \
    android.hardware.power-V1-ndk_platform

include $(BUILD_SHARED_LIBRARY)
