TARGET := iphone:clang:latest:18.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = rootless


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = iInvadePrivacy

iInvadePrivacy_FILES = $(wildcard src/*.x src/*.m)
iInvadePrivacy_CFLAGS = -fobjc-arc -Iinclude
iInvadePrivacy_PRIVATE_FRAMEWORKS = SpringBoard

include $(THEOS_MAKE_PATH)/tweak.mk
