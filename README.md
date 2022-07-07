# autologin-BayernWLAN
simple scripts to create a background service to pass the captive page of @BayernWLAN Networks automatically

## Download
### Method 1 using git

~~~bash
git clone https://github.com/niggowai/autologin-BayernWLAN.git
~~~

### Method 2 using browser
Go to code, download zip, unzip downloaded file

## Installation

### Linux

run install.sh with root privileges

~~~bash
sudo ./install.sh
~~~

### Windows

run install.vbs and follow the instructions

## Requirements

### Linux

systemd

curl

## Uninstall

### Linux

Rerun your install script with the uninstall flag

~~~bash
sudo ./install.sh uninstall
~~~

### Windows

Rerun the install.vbs and follow the steps or delete the file autologin.vbs from your autostart folder