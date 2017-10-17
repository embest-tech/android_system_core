# Copyright 2005 The Android Open Source Project
#
# Android.mk for ts_calibrator
#

ifeq ($(TARGET_TS_CALIBRATION),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	led_aging.c

LOCAL_CFLAGS += -DTS_DEVICE=$(TARGET_TS_DEVICE) -DTS_SYS_PATH=\"$(TARGET_TS_SYS_PATH)\"

LOCAL_MODULE := led_acc
LOCAL_MODULE_TAGS := eng

LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT_SBIN)
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES += libcutils libc

include $(BUILD_EXECUTABLE)

endif
