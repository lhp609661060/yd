# yd.sh 使用说明
`sh yd.sh [mode] [name...]`

### 参数说明
- mode: install 安装软件
    1. name: all 一次安装所有软件
    2. name: redis 指定安装redis
- mode: uninstall 卸载软件
    1. name: all 一次卸载所有软件
    2. name: redis 指定卸载redis
- mode: start 启动软件
    1. name: all 一次启动所有软件
    2. name: redis 指定启动redis
- mode: stop 关闭软件应用
    1. name: all 一次关闭所有软件
    2. name: redis 指定关闭redis
- mode: restart 重启软件
    1. name: all 一次重启所有软件
    2. name: redis 指定重启redis  
    
- mode: -h 帮助
    1. name: install、uninstall、start、stop、restart 说明
    2. name: path 查看所有软件安装目录，日志目录，配置目录