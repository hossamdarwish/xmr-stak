sudo cat <<EOT >> /etc/security/limits.conf
[Unit]
Description=xmr
After=network.target
[Service]
ExecStart=/usr/local/src/xmr-stak/bin/xmr-stak 
User=root
[Install]
WantedBy=multi-user.target
EOT

sudo systemctl daemon-reload
sudo systemctl enable xmr.service
