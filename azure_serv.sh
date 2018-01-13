sudo tee /lib/systemd/system/xmr.service <<END
[Unit]
Description=xmr
After=network.target
[Service]
ExecStart=/home/sala/xmr-stak/bin/xmr-stak -c /home/sala/xmr-stak/bin/config.txt --cpu /home/sala/xmr-stak/bin/cpu.txt
User=root
[Install]
WantedBy=multi-user.target
END

sudo systemctl daemon-reload
sudo systemctl enable xmr.service
sudo systemctl start xmr.service

sudo systemctl status xmr.service
