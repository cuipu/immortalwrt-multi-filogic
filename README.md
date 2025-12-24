# immortalwrt-multi-filogic
## 仓库说明

ImmortalWrt 24.10 多设备云编译仓库（Filogic/MT798x 平台）  使用 GitHub Actions 自动编译 padavanonly 的 immortalwrt-mt798x-24.10 源码（闭源 MTK WiFi 驱动 + 内核 6.6）  当前支持设备： - 小米/红米 AX6000（ubootmod 不死修改） 

## 默认登陆地址

- 修改默认登录地址在/scripts/init-settings.sh
  - 默认登录地址为192.168.2.1
  - 账号为 root
  - 密码为空
## 默认集成插件

默认集成 LuCI 中文、Passwall、OpenClash、TTYD 等插件 编译完成自动发布到 Releases，方便下载刷机 欢迎 fork 自定义自己的插件和设备
