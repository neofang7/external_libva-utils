# For vainfo
# =====================================================

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	vainfo.c		\
	../common/va_display.c	\
	../common/va_display_android.cpp

LOCAL_CFLAGS += \
  -DANDROID -Wno-unused-parameter

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/../common

LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE := vainfo

LOCAL_SHARED_LIBRARIES := libva-android libva libdl libcutils libutils libgui_vendor

include $(BUILD_EXECUTABLE)

