#!/bin/bash
###
 # @Author: cuipu g050505@gmail.com
 # @Date: 2025-12-24 10:46:47
 # @LastEditors: cuipu g050505@gmail.com
 # @LastEditTime: 2025-12-24 10:48:17
 # @FilePath: \esp32_projectse:\GitHub Actions Projects\immortalwrt-multi-filogic\scripts\scripts\init-settings.sh
 # @Description: 
 # 
 # Copyright (c) 2025 by Mr.Cui, All Rights Reserved. 
### 

# ImmortalWrt的默认登录地址192.168.1.1，想要修改默认登录地址可以在这里修改
# 用户名： root
# 密码： none (即密码为空，直接点击登录) 或 password

# 更改默认登录地址为192.168.2.1
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# 给config下的文件增加权限
chmod 644 files/etc/config/*


echo "init-settings executed successfully!"