TARGET := iphone:clang:15.6:15.6

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Instakill

Instakill_FILES = Tweak.m Tweak.swift
Instakill_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
