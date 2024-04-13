TARGET := iphone:clang:15.6:15.6


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Instakill

Instakill_FILES = $(shell find Sources/Instakill -name '*.swift') $(shell find Sources/InstakillC -name '*.m' -o -name '*.c' -o -name '*.mm' -o -name '*.cpp')
Instakill_SWIFTFLAGS = -ISources/InstakillC/include
Instakill_CFLAGS = -fobjc-arc -ISources/InstakillC/include

include $(THEOS_MAKE_PATH)/tweak.mk
