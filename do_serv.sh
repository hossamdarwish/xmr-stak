sudo tee /lib/systemd/system/xmr.service <<END
[Unit]
Description=xmr
After=network.target
[Service]
ExecStart=/root/xmr-stak/bin/xmr-stak -c /root/xmr-stak/bin/config.txt --cpu /root/xmr-stak/bin/cpu.txt
User=root
[Install]
WantedBy=multi-user.target
END

sudo systemctl daemon-reload
sudo systemctl enable xmr.service
sudo systemctl start xmr.service

sudo systemctl status xmr.service

echo "==done=="
