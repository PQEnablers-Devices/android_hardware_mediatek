LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := android.hardware.vibrator-service.mediatek
LOCAL_VINTF_FRAGMENTS := android.hardware.vibrator.mediatek.xml
LOCAL_INIT_RC := vibrator-mediatek.rc
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_SRC_FILES := \
    Vibrator.cpp \
    VibratorUtils.cpp \
    main.cpp

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libbinder_ndk \
    android.hardware.vibrator-V2-ndk

ifeq ($(TARGET_VIBRATOR_SUPPORTS_EFFECTS),true)
    LOCAL_CFLAGS += -DVIBRATOR_SUPPORTS_EFFECTS
endif

include $(BUILD_EXECUTABLE)
