TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = YouTube

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouTubeFix
ARCHS = arm64 arm64e

YoutubeFix_FILES = Tweak.x
YoutubeFix_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
