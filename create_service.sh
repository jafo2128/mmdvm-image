#!/bin/bash

cat > /lib/systemd/system/mmdvmhost.service << EOL
[Unit]
Description=MMDVM Host Service
After=syslog.target network.target

[Service]
User=pi
WorkingDirectory=/home/pi/Applications/MMDVMHost
ExecStart=/usr/bin/screen -S MMDVMHost -D -m /home/pi/Applications/MMDVMHost/MMDVMHost /home/pi/MMDVM.ini
ExecStop=/usr/bin/screen -S MMDVMHost -X quit

[Install]
WantedBy=multi-user.target
EOL

cat > /lib/systemd/system/mmdvmhost.timer << EOL
[Timer]
OnStartupSec=60

[Install]
WantedBy=multi-user.target
EOL

chmod 755 /lib/systemd/system/mmdvmhost.service
ln -s /lib/systemd/system/mmdvmhost.service /etc/systemd/system/mmdvmhost.service
chmod 755 /lib/systemd/system/mmdvmhost.timer
ln -s /lib/systemd/system/mmdvmhost.service /etc/systemd/system/mmdvmhost.timer
systemctl daemon-reload
systemctl enable mmdvmhost.timer