# TOC

[ReVanced Root Install Instructions](https://github.com/HaiziIzzudin/reference/blob/main/For%20Vanced%20Readme.md)

[Multimedia Tools Installer for Linux](https://github.com/HaiziIzzudin/reference-garbage-scripts/blob/main/multimedia-tools-installer-linux.md)

[Linode xfce4 install instructions](https://github.com/HaiziIzzudin/reference-garbage-scripts/blob/main/Linode%20xfceDE%20install%20instructions.md)


## Linode User Initial Use
```
sudo apt update && sudo apt upgrade -y; read -e -p "Enter in username: " usernamed; adduser $usernamed; usermod -aG sudo $usernamed; logout;
```



## ReVanced exclusion configurator
```
iwr https://raw.githubusercontent.com/HaiziIzzudin/Code_Scraps/main/revanced%20script.ps1 | iex
```
