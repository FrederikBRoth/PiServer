#!/bin/bash

echo "[-] Installing webhook in sysd.."
file_location=/etc/systemd/system/webhookd_pi.service

sudo cat > $file_location <<EOF
[Unit]
Description=webhookd_pi
ConditionPathExists=/home/fred/Maintenance/Webhookd
After=network.target

[Service]
Type=simple
WorkingDirectory=/home/fred/Maintenance/Webhookd
ExecStart=/home/fred/Maintenance/Webhookd/webhookd -listen-addr ":4000"
PrivateTmp=true

[Install]
WantedBy=default.target
EOF

systemctl daemon-reload
systemctl start webhookd_pi.service
systemctl enable webhookd_pi.service

echo "[ok] Installing webhook in sysd."
