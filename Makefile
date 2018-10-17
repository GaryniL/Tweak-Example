THEOS_PACKAGE_DIR_NAME = debs
#TARGET =: clang
TARGET = iphone:latest:10.0
ARCHS = arm64

DEBUG = 0
GO_EASY_ON_ME = 1
LDFLAGS += -Wl,-segalign,0x4000
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = sampleTweak
sampleTweak_FILES = Tweak.xm
sampleTweak_FRAMEWORKS = UIKit Foundation

sampleTweak_CFLAGS += -DVERBOSE
sampleTweak_LDFLAGS += -lAccessibility
sampleTweak_CFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
