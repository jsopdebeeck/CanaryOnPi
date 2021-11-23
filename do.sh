# This is a list of commands, not an automatic script to launch 


# Basic stuffs

sudo apt update
sudo apt upgrade
sudo apt autoremove

# Change Mac Address

# sample final output
# "console=serial0,115200 console=tty1 root=/dev/mmcblk0p7 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait fbcon=map:10 fbcon=font:VGA8x8 quiet splash plymouth.ignore-serial-consoles smsc95xx.macaddr=00:11:32:11:22:33 
sudo nano /boot/cmdline.txt


sudo apt-get install git python-virtualenv python-pip python-dev libssl-dev libffi-dev

#Change the last entry from 127.0.1.1 raspberrypi to 127.0.1.1 myserver
# Change host
sudo nano /etc/hosts

# Reboot
# Sudo Reboot

# add some libraries
sudo apt-get install git python-virtualenv python-pip python-dev libssl-dev libffi-dev

# Virtual Env
virtualenv -p python3 canary-env
source canary-env/bin/activate

# From the vEnv
pip install -- upgrade pip setuptools

# From the vEnv - Install Canary
git clone https://github.com/thinkst/opencanary
cd opencanary
sudo python setup.py install

# Create some links

sudo link /usr/local/bin/twistd /home/pi/canary-env/bin/twistd
sudo link /usr/local/bin/twistd /home/pi/opencanary/bin/twistd
cp /home/pi/opencanary/build/scripts-3.7/opencanary.tac /home/pi/canary-env/bin/opencanary.tac
sudo cp ./build/scripts-3.7/opencanary.tac /usr/local/bin/opencanary.tac


# Initial Config (attached in the reporsitory)

sudo nano /home/pi/opencanary/opencanary.conf

# To start OpenCanary in Dev
opencanaryd –dev

# To make an autostart (attached in the reporsitory)
sudo nano /etc/systemd/system/opencanary.service

# Start all
sudo systemctl enable opencanary.service
sudo systemctl start opencanary.service
systemctl status opencanary.service

# To check the services

systemctl status opencanary.service

# If you need to grant access to specific logs
sudo chmod 666 /var/tmp/opencanary-tmp.log 
