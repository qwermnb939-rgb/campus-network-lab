# M3 Nginx 静态演示页

- 环境：本地虚拟机 `learn@localhost`（云机有服务，暂未部署）
- Nginx：1.20.1；监听 `0.0.0.0:80`；根目录 `/usr/share/nginx/html/index.html`
- 本机验证：`curl -sI http://127.0.0.1/` → 200
- 宿主访问：`http://192.168.189.128/`（`ens160`）
- 排障：本机 curl 通、宿主打不开 → `firewalld` 拦外来 80；已执行  
  `firewall-cmd --permanent --add-service=http` + `--reload`
- 云机备注：部署前先 `ss` 查 80；若被 docker 占用则听 8080，并放行安全组 TCP 8080
