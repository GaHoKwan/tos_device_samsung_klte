# makefile template

# ro.product.brand
DEVICE_BRAND := Samsung
# ro.product.model
DEVICE_NAME := klte
# ro.build.display.id
SW_VERSION := 

# packages need to be decompiled
DECOMPILE_PACKAGES := framework.jar ext.jar services.jar android.policy.jar framework2.jar telephony-common.jar framework-res.apk

# custom resource package
CUSTOM_RESOURCE_PACKAGE := none

# extra packages need to be decompiled
#EXTRA_DECOMPILE_PACKAGES := TOS:qgallery.apk TARGET:Camera2.apk

# unpack boot.img tool
# support relative path & variables
# e.g. $(PORT_TOOLS)/unpackbootimg.sh
UNPACK_BOOTIMG_TOOL := $(PORT_BUILD)/tools/flyme/unpack_bootimg

# pack boot.img too
# support relative path & variables
# e.g. $(PORT_TOOLS)/mkbootimg.sh
PACK_BOOTIMG_TOOL := $(PORT_BUILD)/tools/flyme/pack_bootimg

# device list that is suitable for. these devices will be added to the ota updater-script assertion statement
SUITABLE_DEVICES :=

# apktool/smali/baksmali selection
# support relative path & variables
# e.g. $(PORT_TOOLS)/apktool/apktool.jar
APKTOOL_JAR := default
SMALI_JAR := default
BAKSMALI_JAR := default

# aapt tool
# support relative path & variables
# e.g. $(PORT_TOOLS)/android/aapt
AAPT_PATH := default

##############################################################################
# The value is used to config the device's resolution.
# such as 1280x720, 1920x1080
#-----------------------------------------------------------------------------
RESOLUTION :=1920x1080

##############################################################################
# The value is used to config whether to append device assertions to update_script
# such as true, false.
#-----------------------------------------------------------------------------
RECOVERY_DEVICE_ASSERT=true

##############################################################################
# The value is used to config the apps that should be modified 
#-----------------------------------------------------------------------------
#TOS_CUSTOM_APPS:=qphone qsystemui

include $(PORT_BUILD)/main.mk
