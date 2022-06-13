TARGET := iphone:clang:latest:10.0
INSTALL_TARGET_PROCESSES = Twitter
export ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TwitterLoginFix
DEFS = -x objective-c -isystem /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/ -DHAVE_CONFIG_H

TwitterLoginFix_FILES = Tweak.xm
TwitterLoginFix_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
FINALPACKAGE=1
