#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=rtc-sd2068
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define KernelPackage/rtc-sd2068
  SUBMENU:=Other modules
  KCONFIG:=CONFIG_RTC_CLASS=y
  DEPENDS:=+kmod-i2c-core
  TITLE:=Driver for RTC SD2068
  AUTOLOAD:=$(call AutoLoad,70,rtc-sd2068)
  FILES:=$(PKG_BUILD_DIR)/rtc-sd2068.ko
endef

#define Build/Prepare
#	mkdir -p $(PKG_BUILD_DIR)
#	$(CP) ./src/* $(PKG_BUILD_DIR)/
#endef

EXTRA_KCONFIG:= \
        CONFIG_RTC_SD2068=m \
	CONFIG_I2C=y

EXTRA_CFLAGS:= \
        $(patsubst CONFIG_%, -DCONFIG_%=1, $(patsubst %=m,%,$(filter %=m,$(EXTRA_KCONFIG)))) \
        $(patsubst CONFIG_%, -DCONFIG_%=1, $(patsubst %=y,%,$(filter %=y,$(EXTRA_KCONFIG)))) \

MAKE_OPTS:= \
        $(KERNEL_MAKE_FLAGS) \
        M="$(PKG_BUILD_DIR)" \
        EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
        $(EXTRA_KCONFIG)

define Build/Compile
	$(MAKE) -C "$(LINUX_DIR)" \
		$(MAKE_OPTS) \
		modules
endef

$(eval $(call KernelPackage,rtc-sd2068))
