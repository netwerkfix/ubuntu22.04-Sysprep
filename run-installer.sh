mkdir -p /etc/sysprep/
cd /etc/sysprep/
wget https://github.com/netwerkfix/ubuntu22.04-Sysprep/blob/main/run.sh
wget https://github.com/netwerkfix/ubuntu22.04-Sysprep/blob/main/delay-boot.sh

cd /etc/systemd/system/
wget https://github.com/netwerkfix/ubuntu22.04-Sysprep/blob/main/sysprep.service

chmod 755 /etc/systemd/system/sysprep.service
chmod 755 /etc/sysprep/run.sh
chmod 755 /etc/sysprep/delay-boot.sh

sytemctl enable --now sysprep.service
reboot