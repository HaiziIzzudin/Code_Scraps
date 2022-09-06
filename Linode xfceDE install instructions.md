First, C&P this into terminal:
```
read -e -p "Enter in username: " usernamed; adduser $usernamed; usermod -aG sudo $usernamed; logout;
```
Switch to Glish.

On a localhost login, enter in username and password (the NOT ROOT one) that you entered recently.

C&P this code into terminal:
```
sudo apt-get update && sudo apt-get upgrade;
```
After above command has finished, please reboot your linode.

After rebooting has finished, enter this command:
```
sudo apt-get install xfce4; sudo startxfce4;
```
