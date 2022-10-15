#!/bin/bash
#========================================================================================================================
# Description: Automatically Build ImmortalWrt for Amlogic
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/immortalwrt/immortalwrt.git / Branch: 21.02
#========================================================================================================================

# Uncomment a feed source
# sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
# sed -i 's/\"#src-git\"/\"src-git\"/g' feeds.conf.default
sed -i 's/\"#src/gz\"/\"src/gz\"/g' customfeeds.conf

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src/gz custom_generic https://raw.githubusercontent.com/lrdrdn/my-opkg-repo/main/generic' customfeeds.conf
sed -i '$a src/gz custom_arch https://raw.githubusercontent.com/lrdrdn/my-opkg-repo/main/$(cat /etc/os-release | grep OPENWRT_ARCH | awk -F '"' '{print $2}')' customfeeds.conf

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}

