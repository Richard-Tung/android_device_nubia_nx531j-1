LOCAL_PRIVATE_PATH := device/nubia/nx531j/kernel

KERNEL_OUT := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
TARGET_PREBUILT_KERNEL_INCLUDE := $(KERNEL_OUT)

$(TARGET_PREBUILT_KERNEL_INCLUDE):
	mkdir -p $(KERNEL_OUT)
	cp -rf $(LOCAL_PRIVATE_PATH)/include/* $(KERNEL_OUT)/