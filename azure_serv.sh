sudo cat <<EOT >> /lib/systemd/system/xmr.service
[Unit]
Description=xmr
After=network.target
[Service]
ExecStart=/home/sala/xmr-stak/bin/xmr-stak 
User=root
[Install]
WantedBy=multi-user.target
EOT

sudo systemctl daemon-reload
sudo systemctl enable xmr.service
