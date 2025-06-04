#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.6.6/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# 移除USB网络共享
# sed -i 's/kmod-usb-net-rndis //g' target/linux/mediatek/image/mt7986.mk


git clone https://github.com/zzsj0928/luci-app-pushbot package/luci-app-pushbot

# ddnsto 3.0.2
git clone https://github.com/linkease/nas-packages-luci package/nas-packages-luci
git clone https://github.com/linkease/nas-packages package/nas-packages
git clone https://github.com/souwei168/luci-app-store.git package/luci-app-store

#onliner
git clone https://github.com/kiddin9/kwrt-packages kiddin9_package
cp -rf kiddin9_package/luci-app-onliner package/luci-app-onliner
cp -rf kiddin9_package/luci-app-store package/luci-app-store
cp -rf kiddin9_package/luci-app-wizard package/luci-app-wizard

cp -rf kiddin9_package/luci-app-aliyundrive-webdav package/luci-app-aliyundrive-webdav
cp -rf kiddin9_package/aliyundrive-webdav package/aliyundrive-webdav

cp -rf kiddin9_package/luci-app-easymesh package/luci-app-easymesh
cp -rf kiddin9_package/luci-app-fileassistant package/luci-app-fileassistant
cp -rf kiddin9_package/luci-app-timecontrol package/luci-app-timecontrol

rm -rf kiddin9_package

git clone https://github.com/DustReliant/luci-app-filetransfer.git package/luci-app-filetransfer

#lucky
git clone https://github.com/sirpdboy/luci-app-lucky.git package/lucky
