#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
echo 'src-git OpenAppFilter https://github.com/destan19/OpenAppFilter' >>feeds.conf.default
#echo 'src-git passwallluci https://github.com/xiaorouji/openwrt-passwall;luci' >>feeds.conf.default
#echo 'src-git argon https://github.com/jerrykuku/luci-theme-argon.git' >>feeds.conf.default

# Add third_party feed sources
#sed -i '$a src-git jerrykuku https://github.com/jerrykuku/openwrt-package.git' feeds.conf.default
#sed -i '$a src-git small8 https://github.com/kenzok8/small-package.git' feeds.conf.default
sed -i '$a src-git kenzok8 https://github.com/kenzok8/openwrt-packages.git' feeds.conf.default
#sed -i '$a src-git MrH723 https://github.com/MrH723/openwrt-packages' feeds.conf.default
#sed -i '$a src-git liuran001_packages https://github.com/liuran001/openwrt-packages' feeds.conf.default
#sed -i '$a src-git NueXini_Packages https://github.com/NueXini/NueXini_Packages.git' feeds.conf.default
#sed -i '$a src-git opentopd  https://github.com/sirpdboy/sirpdboy-package' feeds.conf.default
#sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git' feeds.conf.default

# delet package
rm -rf package/lean/luci-theme-argon
rm openwrt/package/lean/luci-theme-argon -rf
