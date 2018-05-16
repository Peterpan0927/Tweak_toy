THEOS_DEVICE_IP = 192.168.1.129
ARCHS = arm64
TARGET = iphone:latest:8.0
ADDITIONAL_OBJFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SpringBoardFlashColor
SpringBoardFlashColor_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
