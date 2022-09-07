clear;
echo "Now running installation of multimedia tools...";

echo "Installing ffmpeg";
cd ~/;
wget https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-linux64-gpl.tar.xz; 
tar -xf ffmpeg-master-latest-linux64-gpl.tar.xz; 
cd ffmpeg-master-latest-linux64-gpl/bin; 
cp ./ffmpeg ~/; 
cd ~/; 
rm -r ./ffmpeg-master-latest-linux64-gpl ./ffmpeg-master-latest-linux64-gpl.tar.xz;

echo "Installing yt-dlp...";
cd ~/;
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp;

echo "Installing ytarchive";
cd ~/;
wget https://github.com/Kethsar/ytarchive/releases/download/latest/ytarchive_linux_amd64.zip; 
sudo apt install unzip; 
unzip ytarchive_linux_amd64.zip; 
rm ./ytarchive_linux_amd64.zip; 

echo "Making yt-dlp executable...";
cd ~/;
sudo chmod +x ./yt-dlp

echo "Doing aliases...";
cd ~/; alias ffmpeg=./ffmpeg; alias yt-dlp=./yt-dlp; alias ytarchive=./ytarchive;

clear;
echo "Multimedia utilities installation has finished.";
echo "HOW TO USE: directly type ffmpeg/yt-dlp/ytarchive";