#!/bin/bash
###
 # @Author: cuipu g050505@gmail.com
 # @Date: 2025-12-24 10:58:26
 # @LastEditors: cuipu g050505@gmail.com
 # @LastEditTime: 2025-12-24 10:58:36
 # @FilePath: \esp32_projectse:\GitHub Actions Projects\immortalwrt-multi-filogic\scripts\scripts\preset-clash-core-arm64-L.sh
 # @Description: 
 # 
 # Copyright (c) 2025 by Mr.Cui, All Rights Reserved. 
### 

# 创建存放内核的目录（OpenClash 默认路径）
mkdir -p files/etc/openclash/core

# 设置内核下载地址 (使用 Mihomo 核心，即 Clash Meta)
# 2025年主流：ARM64 架构适合 AX6000 等设备
CORE_Mihomo_URL="github.com"

echo "开始下载 Clash Meta (Mihomo) 内核..."
curl -sL -o files/etc/openclash/core/clash_meta.gz $CORE_Mihomo_URL

# 解压并重命名
gzip -d files/etc/openclash/core/clash_meta.gz
mv files/etc/openclash/core/clash_meta files/etc/openclash/core/clash_meta

# 赋予执行权限
chmod +x files/etc/openclash/core/clash_meta

echo "Clash 内核预设完成！"
