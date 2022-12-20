# TOC



## Linode User Initial Use (paste in bash terminal)
```
sudo apt update && sudo apt upgrade -y; read -e -p "Enter in username: " usernamed; adduser $usernamed; usermod -aG sudo $usernamed; logout;
```



## ReVanced exclusion configurator
```
iwr https://raw.githubusercontent.com/HaiziIzzudin/Code_Scraps/main/revanced%20script.ps1 | iex
```



## livedl feat. ytarchive
For Windows:
```
iwr github.com/HaiziIzzudin/haizi_side_projects/raw/main/livedl%20feat%20ytarchive.ps1 | iex
```
For Linux (BASH):
```
bash -c "$(curl -fsSL https://github.com/HaiziIzzudin/ytdlp-guided-cli/raw/main/livedl_forAndroid_v4.sh)"
```



## Install ffmpeg on linux (the RIGHT way, updated to ffmpeg 5)
```
wget -O - https://github.com/HaiziIzzudin/haizi_side_projects/raw/main/ffmpeg-linux-rightway.sh | bash
```
