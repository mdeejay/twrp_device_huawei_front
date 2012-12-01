#
# Copyright (C) 2012 The Android Open-Source Project
# Copyright (C) 2012 mdeejay
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# This file includes all definitions that apply to ALL front devices, and
# are also specific to front devices
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/huawei/front/overlay

#Camera
PRODUCT_PACKAGES += \
        Camera

# Packages
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	libtinyalsa \
	tinycap \
	tinymix \
	tinyplay \
	libaudioutils \
	power.front

# OMAP Packages
PRODUCT_PACKAGES += \
	libstagefrighthw \
        libdrmdecrypt \
        libI420colorconvert \
	smc_pa_ctrl \
	tf_daemon \
	libtf_crypto_sst

# Ramdisk
PRODUCT_COPY_FILES += \
	device/huawei/front/ramdisk/init:root/init \
	device/huawei/front/ramdisk/init.rc:root/init.rc \
	device/huawei/front/ramdisk/init.omap4460.rc:root/init.omap4460.rc \
	device/huawei/front/ramdisk/init.omap4460.usb.rc:root/init.omap4460.usb.rc \
	device/huawei/front/ramdisk/ueventd.omap4460.rc:root/ueventd.omap4460.rc

# Media / Audio
PRODUCT_COPY_FILES += \
	device/huawei/front/media/media_profiles.xml:system/etc/media_profiles.xml \
	device/huawei/front/media/media_codecs.xml:system/etc/media_codecs.xml \
	device/huawei/front/audio/audio_policy.conf:system/etc/audio_policy.conf \
	device/huawei/front/audio/es305img.bin:system/etc/es305img.bin \
	device/huawei/front/audio/huawei/audio/cm_front_audio_config.conf:system/etc/huawei/audio/cm_front_audio_config.conf \
	device/huawei/front/audio/huawei/audio/front_audio_config.conf:system/etc/huawei/audio/front_audio_config.conf \
	device/huawei/front/audio/huawei/audio/front_factory_audio_config.conf:system/etc/huawei/audio/front_factory_audio_config.conf \
	device/huawei/front/audio/huawei/audio/U9500_audio_config.conf:system/etc/huawei/audio/U9500_audio_config.conf \
	device/huawei/front/audio/huawei/audio/U9500_factory_audio_config.conf:system/etc/huawei/audio/U9500_factory_audio_config.conf

# GPS
PRODUCT_COPY_FILES += \
	device/huawei/front/gps/gps.conf:system/etc/gps.conf \
	device/huawei/front/gps/gpsconfig.xml:system/etc/gpsconfig.xml \
	device/huawei/front/gps/gpsconfig_front.xml:system/etc/gpsconfig_front.xml \
	device/huawei/front/gps/uratRate:system/etc/uratRate

# BT
PRODUCT_COPY_FILES += \
	device/huawei/front/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
	device/huawei/front/bluetooth/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
	device/huawei/front/bluetooth/BCM4330B1.hcd:system/etc/bluetooth/BCM4330B1.hcd \
	device/huawei/front/bluetooth/blacklist.conf:system/etc/bluetooth/blacklist.conf \
	device/huawei/front/bluetooth/init.bcm.chip_off.sh:system/etc/bluetooth/init.bcm.chip_off.sh \
	device/huawei/front/bluetooth/init.bcm.chip_on.sh:system/etc/bluetooth/init.bcm.chip_on.sh \
	device/huawei/front/bluetooth/input.conf:system/etc/bluetooth/input.conf \
	device/huawei/front/bluetooth/network.conf:system/etc/bluetooth/network.conf

# Vold
PRODUCT_COPY_FILES += \
	device/huawei/front/vold.fstab:system/etc/vold.fstab

# Torch
PRODUCT_PACKAGES += \
        Torch

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

# Common
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs \
	l2ping \
	com.android.future.usb.accessory

# Key maps
PRODUCT_COPY_FILES += \
	device/huawei/front/usr/omap4-keypad.kl:system/usr/keylayout/omap4-keypad.kl \
	device/huawei/front/usr/omap4-keypad.kcm:system/usr/keychars/omap4-keypad.kcm \
	device/huawei/front/usr/twl6030_pwrbutton.kl:system/usr/keylayout/twl6030_pwrbutton.kl

# Input device calibration files
PRODUCT_COPY_FILES += \
	device/huawei/front/usr/syn_tm12xx_ts_1.idc:system/usr/idc/syn_tm12xx_ts_1.idc \
	device/huawei/front/usr/syn_tm12xx_ts_2.idc:system/usr/idc/syn_tm12xx_ts_2.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

PRODUCT_COPY_FILES += $(call add-to-product-copy-files-if-exists,\
packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml)

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	e2fsck \
	setup_fs

#Lib Skia test
PRODUCT_PACKAGES += \
	SkLibTiJpeg_Test

# for bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
	system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
	system/extras/bugmailer/send_bug:system/bin/send_bug

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.locationfeatures=1 \
	ro.setupwizard.enable_bypass=1 \
	dalvik.vm.execution-mode=int:jit \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y

PRODUCT_CHARACTERISTICS := default
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ru_RU xhdpi
BOARD_WLAN_DEVICE_REV := bcm4330_b1
WIFI_BAND             := 802_11_ABG

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/huawei/front/front-vendor.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
