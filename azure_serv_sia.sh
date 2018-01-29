sudo tee /lib/systemd/system/sia.service <<END
[Unit]
Description=sia
After=network.target
[Service]
ExecStart=/home/sala/marlin -u 05e744c51f6b8b244d8e8f28301b66486a486bfd897c3747731de57ea96d92a48ff55204e162.kala-1 -I 28 -H us-east.luxor.tech:3333
User=root
[Install]
WantedBy=multi-user.target
END

sudo systemctl daemon-reload
sudo systemctl enable sia.service
sudo systemctl start sia.service

sudo systemctl status sia.service
echo "==done=="
