# Copyright 2006 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= rtctest.c

LOCAL_SHARED_LIBRARIES := libc

LOCAL_MODULE:= rtctest

include $(BUILD_EXECUTABLE)
