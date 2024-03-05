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

Script will be active after reboot

### Shortcuts for iOS/Apples BSD Fork(MacOS)

You may need to select the **Use Network as is** option in the wifi settings the first time.
The Automation will switch off your Cellular Data, fetch the sessionID, send the form with the sessionID and reenable your mobile Data afterwards.
The link may change when I update it and I cannot guarantee the integrity of the automation due to apples **Share-your-Shortcut**-System
https://www.icloud.com/shortcuts/2f559c66e2134842880881e68dc9c527

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