#!/bin/bash
echo "=== healthcheck $(date '+%F %T') ==="

if ping -c 3 -W 2 223.5.5.5 >/dev/null 2>&1; then
  echo "[OK] ping 223.5.5.5"
else
  echo "[FAIL] ping 223.5.5.5"
fi

if ping -c 3 -W 2 baidu.com >/dev/null 2>&1; then
  echo "[OK] ping baidu.com (DNS+连通)"
else
  echo "[FAIL] ping baidu.com"
fi

if ss -tlnp 2>/dev/null | grep -q ':22 '; then
  echo "[OK] port 22 listening"
else
  echo "[FAIL] port 22 not listening"
fi
