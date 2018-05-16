THEOS_DEVICE_IP = 192.168.199.129
ARCHS = arm64
TARGET = iphone:latest:8.0

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = iOSRETargetApp
iOSRETargetApp_FILES = main.m Talker.m
iOSRETargetApp_FRAMEWORKS = Foundation

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "su mobile -c uicache"
