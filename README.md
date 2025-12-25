# ImmortalWrt Multi-Filogic 定制编译项目
这是一个基于 ImmortalWrt 源码，针对联发科 Filogic (MT798x) 平台设备的定制化编译项目。
重要提示： 当前版本仅支持 红米 AX6000 (Redmi Router AX6000)。其他设备的支持将在未来规划中。
## 项目结构概览
```
.github/workflows/  # GitHub Actions CI/CD 工作流文件
configs/ax6000/     # AX6000 专用的软件包和配置选项
devices/ax6000/     # AX6000 硬件相关的设备定义和补丁，多设备编译时使用，目前废弃
scripts/            # 编译前后自定义脚本
```
## AX6000 使用说明
本项目使用 GitHub Actions 自动构建固件。主要配置文件位于 configs/ax6000/。
## 配置选项
configs/ax6000/ax6000.config：核心系统和设备特定的配置，定义了需要编译进固件的基础组件和内核模块。
configs/ax6000/packages-ax6000.config：额外的 LuCI 应用和第三方软件包列表，按需勾选或取消注释。

## 预设脚本：
scripts/init-settings.sh 包含了固件首次启动后的默认网络配置和设置脚本，请根据你的需求修改。

## 编译流程 (GitHub Actions)
项目配置了自动触发编译的工作流：
- build-ax6000.yml：针对 AX6000 设备的独立构建流程。
- build.yml：通用构建入口。目前没有完成
- 每次向 main 分支提交代码后，Actions 将自动运行，并将生成的固件（Artifacts）发布在 Actions 页面。
## 默认登陆地址
- 修改默认登录地址在/scripts/init-settings.sh
  - 默认登录地址为192.168.2.1
  - 账号为 root
  - 密码为空
## 默认集成插件
默认集成 LuCI 中文、Passwall、OpenClash、TTYD 等插件 编译完成自动发布到 Releases，方便下载刷机 欢迎 fork 自定义自己的插件和设备，目前没有跑通，正在测试
