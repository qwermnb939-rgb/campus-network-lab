权限：chmod 644 文件（属主可读写，其他人只读）
      ls -l 文件（查看文件权限）
      whoami （查看当前用户组）
      4读 2写 1执行
进程：
- `pgrep -a 名字`：知道名字时查 PID 和命令
- `ps aux | grep 关键字`：不知道确切名字时筛
- `grep -v grep`：去掉 grep 自己那一行
- `top`：实时看 CPU/内存；`P`/`M` 排序，`q` 退出
- `free -h`：看整机内存还剩多少（看 available）
- 坑：`ps aux | grep xxx` 会搜到 grep 自己
systemd
日志
网络连通

