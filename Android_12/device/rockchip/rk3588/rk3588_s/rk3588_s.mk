#
# Copyright 2014 The Android Open-Source Project
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

# First lunching is S, api_level is 31
PRODUCT_SHIPPING_API_LEVEL := 31
PRODUCT_DTBO_TEMPLATE := $(LOCAL_PATH)/dt-overlay.in

include device/rockchip/common/build/rockchip/DynamicPartitions.mk
include device/rockchip/rk3588/rk3588_s/BoardConfig.mk
include device/rockchip/common/BoardConfig.mk
include device/rockchip/rk3588/rk3588_s/OtaConfig.mk
-include device/rockchip/rk3588/rk3588_s/DroidConfig.mk
$(call inherit-product, device/rockchip/rk3588/device.mk)
$(call inherit-product, device/rockchip/common/device.mk)
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/../overlay
PRODUCT_PACKAGE_OVERLAYS += device/rockchip/rk3588/rk3588_s/overlay

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_NAME := rk3588_s
PRODUCT_DEVICE := rk3588_s
PRODUCT_BRAND := rockchip
PRODUCT_MODEL := orangepi5plus
PRODUCT_MANUFACTURER := rockchip
PRODUCT_AAPT_PREF_CONFIG := xhdpi
#
## add Rockchip properties
#
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=240
PRODUCT_PROPERTY_OVERRIDES += ro.wifi.sleep.power.down=true
PRODUCT_PROPERTY_OVERRIDES += persist.wifi.sleep.delay.ms=0
PRODUCT_PROPERTY_OVERRIDES += persist.bt.power.down=true
PRODUCT_PROPERTY_OVERRIDES += vendor.hwc.compose_policy=1
PRODUCT_PROPERTY_OVERRIDES += vendor.hwc.device.primary=DSI
PRODUCT_PROPERTY_OVERRIDES += vendor.hwc.device.extend=HDMI-A,eDP
PRODUCT_PROPERTY_OVERRIDES += sys.mouse.presentation=1

#* Disabled default 5555 adb port
#PRODUCT_PROPERTY_OVERRIDES += service.adb.tcp.port=5555
PRODUCT_PROPERTY_OVERRIDES += persist.sys.app.rotation=force_land
PRODUCT_KERNEL_DTS := rk3588-orangepi-5-plus

#* This is the only thing you need to fix the audio and video problem.
BOARD_SUPPORT_MULTIAUDIO := false

BOARD_VENDOR_KERNEL_MODULES := \
        kernel-5.10/drivers/net/wireless/intel/iwlwifi/mvm/iwlmvm.ko \
        kernel-5.10/drivers/net/wireless/intel/iwlwifi/iwlwifi.ko \
        kernel-5.10/drivers/net/wireless/rtl8852be/8852be.ko \
        kernel-5.10/drivers/net/wireless/rtl8852be/rtkm.ko \
	kernel-5.10/drivers/net/wireless/rtl8811cu/8821cu.ko \
	kernel-5.10/drivers/net/wireless/rtl8188eu/8188eu.ko \
	kernel-5.10/drivers/net/wireless/rtl8189es/8189es.ko \
	kernel-5.10/drivers/net/wireless/rtl8189fs/8189fs.ko \
	kernel-5.10/drivers/net/wireless/rtl8192eu/8192eu.ko \
	kernel-5.10/drivers/net/wireless/rtl8723ds/8723ds.ko \
	kernel-5.10/drivers/net/wireless/rtl8723du/8723du.ko \
	kernel-5.10/drivers/net/wireless/rtl8812au/88XXau.ko \
	kernel-5.10/drivers/net/wireless/rtl8822bs/88x2bs.ko \
	kernel-5.10/drivers/net/wireless/rtl88x2bu/88x2bu.ko \
	kernel-5.10/drivers/net/wireless/rtl88x2cs/88x2cs.ko \
	kernel-5.10/drivers/bluetooth/rtk_btusb.ko \
	kernel-5.10/drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu.ko


#* PRODUCT_PACKAGES += wiringop gpiox usb_modeswitch#rkCamera2 LiveTv
PRODUCT_PACKAGES += gpiox usb_modeswitch
BOARD_HDMI_IN_SUPPORT:=true

DUAL_LCD ?= false
AGING_TEST ?= false
AGING_TEST ?= false
BOARD := orangepi5-plus

ifeq ($(strip $(DUAL_LCD)), true)
        PRODUCT_PROPERTY_OVERRIDES += ro.surface_flinger.primary_display_orientation=ORIENTATION_90
        PRODUCT_PROPERTY_OVERRIDES += persist.sys.rotation.efull-1 = true
        PRODUCT_PROPERTY_OVERRIDES += persist.sys.rotation.efull-2 = true
        PRODUCT_KERNEL_DTS := rk3588-orangepi-$(subst orangepi,,$(BOARD))-lcd
endif

ifeq ($(strip $(AGING_TEST)), true)
        PRODUCT_COPY_FILES += device/rockchip/rk3588/rk3588s_s/Aging_Test_Video.mp4:/vendor/test/Aging_Test_Video.mp4
        PRODUCT_COPY_FILES += device/rockchip/rk3588/rk3588s_s/Aging_Test.bin:/vendor/test/Aging_Test.bin
        PRODUCT_COPY_FILES += device/rockchip/rk3588/rk3588s_s/boot_start_Aging.sh:/vendor/bin/boot_start.sh
endif

ifeq ($(strip $(IMAGE_TYPE)), cn)
	#* Asia/Shanghai -> UTC
        PRODUCT_PROPERTY_OVERRIDES += persist.sys.timezone="UTC"
	#* zh-CN -> en-US
        PRODUCT_PROPERTY_OVERRIDES += ro.product.locale="en-US"
endif


PRODUCT_KERNEL_CONFIG += pcie_wifi_ax.config

# copy input keylayout and device config
keylayout_files := $(shell ls device/rockchip/rk3588/rk3588_s/remote_config )
PRODUCT_COPY_FILES += \
        $(foreach file, $(keylayout_files), device/rockchip/rk3588/rk3588_s/remote_config/$(file):$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/$(file))
