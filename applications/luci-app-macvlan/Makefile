#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=macvlan config luci
LUCI_DEPENDS:=+kmod-macvlan
LUCI_PKGARCH:=all

PKG_NAME:=luci-app-macvlan
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=Chen Minqiang <ptpt52@gmail.com>

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

LUA_TARGET:=source

include ../../luci.mk

# call BuildPackage - OpenWrt buildroot signature
