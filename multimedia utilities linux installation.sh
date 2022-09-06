echo "Now running installation of multimedia tools...";

echo "Installing ffmpeg";
wget https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-linux64-gpl.tar.xz; 
tar -xf ffmpeg-master-latest-linux64-gpl.tar.xz; 
cd ffmpeg-master-latest-linux64-gpl/bin; 
cp ./ffmpeg ~/; 
cd ~/; 
rm -r ./ffmpeg-master-latest-linux64-gpl ./ffmpeg-master-latest-linux64-gpl.tar.xz;

echo "Installing yt-dlp...";
wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp;

echo "Installing ytarchive";
wget https://github.com/Kethsar/ytarchive/releases/download/latest/ytarchive_linux_amd64.zip; 
sudo apt install unzip; 
unzip ytarchive_linux_amd64.zip; 
rm ./ytarchive_linux_amd64.zip; 

echo "Doing aliases...";
alias ffmpeg=~/ffmpeg;
alias yt-dlp=~/yt-dlp;
alias ytarchive=~/ytarchive;

echo "Multimedia utilities installation has finished.";
echo "REMINDER: Use ./ffmpeg OR ./yt-dlp OR ./ytarchive";


# ============== H265 =============
# -r 60 -g 600 -c:v libx265 -crf 41 -preset fast -c:a copy
# (use TAB to autocomplete filename)";


# ================ AV1 (if content is youtube archive/delivery on platform except youtube) ===============
# -c:v libaom-av1 -r 60 -g 600 -keyint_min 600 -crf 49 -b:v 0 -cpu-used 8 -row-mt 1 -c:a copy


