```
wget https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-linux64-gpl.tar.xz; tar -xf ffmpeg-master-latest-linux64-gpl.tar.xz; cd ffmpeg-master-latest-linux64-gpl/bin; cp ./ffmpeg ~/; cd ~/; rm -r ./ffmpeg-master-latest-linux64-gpl ./ffmpeg-master-latest-linux64-gpl.tar.xz; echo "ffmpeg installation has finished. REMINDER: Use ./ffmpeg";
```
use ffmpeg arguments: -r 30 -g 30 -c:v libx265 -crf 28 -preset medium -c:a copy 
(use TAB to autocomplete filename)";
