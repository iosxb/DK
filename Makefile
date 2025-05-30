ARCHS = arm64 armv7
TARGET = iphone:clang:latest:8.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DKweChat
# Include Objective-C and Logos files
DKHelper_FILES = \
    src/dkhelperDylib.xm

# Link against fishhook library
DKHelper_LIBRARIES = fishhook
DKHelper_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
