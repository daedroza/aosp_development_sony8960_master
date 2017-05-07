LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_BOARD_PLATFORM),msm8960)
ifeq ($(TARGET_DEVICE),huashan)

# HAL module implemenation stored in
# hw/<POWERS_HARDWARE_MODULE_ID>.<ro.hardware>.so
include $(CLEAR_VARS)

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SHARED_LIBRARIES := liblog libcutils libdl
LOCAL_SRC_FILES := power.c metadata-parser.c utils.c list.c hint-data.c
LOCAL_MODULE := power.qcom
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

endif
endif
