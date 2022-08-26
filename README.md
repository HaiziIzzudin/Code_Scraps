## How to install
1. Download magisk module zip from [releases](https://github.com/HaiziIzzudin/rvncd/releases)
2. Open magisk, locate to modules.
3. Click "Install from storage".
4. Click "YouTube-versionnumber.zip", wait for magisk to install the zip.
5. Do not reboot. Repeat step 3 to 4 but flash ytmusic module instead.
6. Reboot.

### Please note that this tutorial will NOT be preventing PlayStore from updating the YouTube APK.

## After successful restart, please check if:
1. there is any ads when you play video and try to lock the screen to test for audio background playback.
2. If video player glitched, do give it multiple app close and restarts. This will mitigate some of the early issues you may encounter, this includes:
    * Video Player play/pause button did not hide on dismiss.
    * Video player app still uses the old design (bold and bulky) play/pause button, and still have the peek of "swipe up for sugegsted videos". The new one should have a thin and light play/pause button, and all the comments, like dislike, share and add-to-playlist button below the seekbar (during fullscreen), and button for "More videos" at the bottom right corner of fullscreen player.

```
-e swipe-controls -e seekbar-tapping -e amoled -e return-youtube-dislike -e custom-branding -e disable-fullscreen-panels -e hide-watermark -e sponsorblock -e enable-wide-searchbar -e tablet-mini-player -e custom-video-buffer -e always-autorepeat -e microg-support -e enable-debugging -e custom-playback-speed -e hide-infocard-suggestions
```
