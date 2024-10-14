////MAC Changer Script////

sudo apt-get install macchanger
# or for Fedora
sudo dnf install macchanger

//////////////////////////////////////////////

///Clone the repository///

cd macchange

///Make the script executable///

chmod +x macchange.sh

/// Change your MAC address every time you start your computer ///

sudo nano /etc/systemd/system/macchange.service

/////////////
#!/bin/bash

[Unit]
Description=MAC Address Changer
After=network.target

[Service]
Type=oneshot
ExecStart=/yourpath/macchange/macchange.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target

///save and exit///

sudo chmod +x /yourpath/macchange/macchange.sh
sudo systemctl daemon-reload
sudo systemctl enable macchange.service

sudo systemctl start macchange.service

///check the status///
sudo systemctl status macchange.service




