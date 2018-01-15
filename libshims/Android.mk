LOCAL_PATH := $(call my-dir)

## libshim_agps
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	agps/crypto.c \
	agps/icu53.c \
	agps/ssl.c

LOCAL_SHARED_LIBRARIES := \
	liblog \
	libicuuc \
	libssl \
	libcrypto

LOCAL_MODULE := libshim_agps
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_atomic
include $(CLEAR_VARS)
LOCAL_SRC_FILES := misc/atomic.cpp
LOCAL_MODULE := libshim_atomic
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_bionic
include $(CLEAR_VARS)
LOCAL_SRC_FILES := misc/bionic.cpp
LOCAL_MODULE := libshims_bionic
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_SHARED_LIBRARIES := libc
include $(BUILD_SHARED_LIBRARY)


## libshim_omx
include $(CLEAR_VARS)

LOCAL_SRC_FILES := misc/mtk-lp-omx.cpp
LOCAL_MODULE := libshim_omx
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_ui
include $(CLEAR_VARS)

LOCAL_SRC_FILES := ui/mtk_ui.cpp

LOCAL_SHARED_LIBRARIES := \
	libbinder \
	libui

LOCAL_MODULE := libshim_ui
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_gui
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	gui/mtk_gui.cpp \
	gui/SensorManager.cpp

LOCAL_SHARED_LIBRARIES := \
	libbinder \
	libgui \
	liblog \
	libsensor \
	libui \
	libutils

LOCAL_MODULE := libshim_gui
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_snd
include $(CLEAR_VARS)

LOCAL_SRC_FILES := audio/mtk_audio.cpp

LOCAL_SHARED_LIBRARIES := \
	libbinder \
	libmedia

LOCAL_MODULE := libshim_snd
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


## libshim_xlog
include $(CLEAR_VARS)

LOCAL_SRC_FILES := misc/xlog.c

LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE := libshim_xlog
LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
