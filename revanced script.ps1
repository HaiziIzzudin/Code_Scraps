Clear-Host; $finalcommand = ""; # clear all config on startup
Write-Host "This program will configure your ReVanced features into a single command line.";
Write-Host "This program will ask several questions regarding your setups.";
Write-Host "This program is based on j-hc revanced magisk repository. Kindly refer there for context."
Write-Host "Type Y or y to say yes, N or n to say no.`n";

$swipec = "swipe-controls "; # swipe controls +
$swipec_msg = "Do you want a full control for brightness and volume inside player by just a swipe?";

$sektap = "seekbar-tapping "; # seekbar tapping +
$sektap_msg = "Do you want a tap away of seeking by just tapping directly on the seekbar?";

$bgpbck = "minimized-playback "; # minimized n bg playback +
$bgpbck_msg = "Are you into turning up the music while the screen is off?";

$amoled = "amoled "; # amoled +
$amoled_msg = "Does your phone screen OLED/AMOLED/SuperAMOLED based?";

$ncreat = "disable-create-button "; # no create button -
$ncreat_msg = "Do you HATE IT when there is create button when you are not a content creator?";

$ncastb = "hide-cast-button "; # no cast button -
$ncastb_msg = "Do you hate it when you accidently tapped the cast button?";

$rytdis = "return-youtube-dislike "; # return youtube dislike count +
$rytdis_msg = "Do you want to see the dislike counter back?";

$hautop = "hide-autoplay-button "; # hide autoplay button -
$hautop_msg = "Do you hate it when YouTube defaulted Autoplay toggle to on?";

$premiu = "premium-heading "; # premium heading +
$premiu_msg = "Do you want to flex on them bois by changing heading to PREMIUM?";

$rvncbr = "custom-branding "; # change app icon from youtube to revanced logo +
$rvncbr_msg = "Do you also want to flex them more by changing logo to ReVanced?";

$fscpnl = "disable-fullscreen-panels "; # fulscreen comments and description panel -
$fscpnl_msg = "Do you hate the comments and description on the side pane during fullscreen?";

$olqual = "old-quality-layout "; # use the old quality selection layout +
$olqual_msg = "Do you like a straightforward option like changing quality on videos?";

$hshort = "hide-shorts-button "; # hide shorts button -
$hshort_msg = "Do you hate it when YouTube start added shorts?";

$hwtrmk = "hide-watermark "; # hide video watermark at the bottom right video player -
$hwtrmk_msg = "Do you feel that video watermark at the bottom right of player is disturbing?";

$spsrbk = "sponsorblock "; # use sponsorblock API -
$spsrbk_msg = "Do you hate sponsor segments?";

$wisech = "enable-wide-searchbar "; # wide searchbar +
$wisech_msg = "Do you want a direct access to the search bar on the header?";

$tabply = "tablet-mini-player "; # tablet mini player +
$tabply_msg = "Are you on tablet?";

$vidbuf = "custom-video-buffer "; # custom vid buffer +
$vidbuf_msg = "DO you want to adjust video buffer of the player?";

$autorp = "always-autorepeat "; # Set loop video to true +
$autorp_msg = "Are you into looping into infinity?";

$microg = "microg-support "; # implement microg if you are nonroot -
$microg_msg = "Does your phone is non-rooted variants?";

$rvncst = "settings "; # revanced settings +
$rvncst_msg = "Do you want to change all the settings above after the fact?";

$debugs = "debugging "; # debugging by patching manifest file +
$debugs_msg = "Are you a debugging nerd?";

$speeds = "custom-playback-speed "; # enable more playback speed +
$speeds_msg = "Are you a lightspeed listener?";

$authdr = "hdr-auto-brightness "; # make hdr video follow system brightness -
$authdr_msg = "Do you hate it when an HDR video flashbanged you?";

$savqua = "remember-video-quality "; # save video quality on selection +
$savqua_msg = "Do you want video to remember your video quality selection?";

$midrol = "video-ads " # remove video ads -
$midrol_msg = "Do you hate video ads?";

$feedad = "general-ads " # remove ads on feed -
$feedad_msg = "Do you hate ads in your feed?";

$infcrd = "hide-infocard-suggestions "; # hide infocard -
$infcrd_msg = "DO you find infocards misleading and unreliable?";

# below is update 17.43.36

$crowdf = "hide-crowdfunding-box " # crowdfunding box -
$crowdf_msg = "Do you find crowdfunding a scam?"

$tiseek = "hide-time-and-seekbar " # time and seekbar on videos -
$tiseek_msg = "Do you feel that time and the seekbar really disturb your viewing?"

$vibutt = "hide-video-buttons " # button below the seekbar -
$vibutt_msg = "Do you find buttons below seekbar is disturbing?"

$captcc = "hide-captions-button " # captoions (CC) button -
$captcc_msg = "Do you find CC button is disturbing your view?"

$strtsh = "disable-startup-shorts-player " # startup shorts player -
$strtsh_msg = "Do you find it annoyying that youtube start playing shorts when you open youtube?"

$watcvr = "hide-watch-in-vr " # watch in VR -
$watcvr_msg = "Are you not a VR enthusiasts?"

$albumc = "hide-album-cards " # album cards -
$albumc_msg = "Do you find artists who promote his album is a scam?"

$autply = "disable-auto-player-popup-panels " # popup panels -
$autply_msg = "Do you find popup panels of autoplayer disturbing?"

$autocc = "disable-auto-captions " # auto captions -
$autocc_msg = "Do you find forcing youtube to generate CC is disturbing?"

$hidart = "hide-artist-card " # artist card -
$hidart_msg = "Do you find artist card below the player disturbing?"

$hidcom = "comments " # comments -
$hidcom_msg = "Do you find comments disturbing?"

$ctheme = "theme " # themes +
$ctheme_msg = "Do you use custom themes?"

$hideml = "hide-email-address " # email address -
$hideml_msg = "Do you like to show off your email on account selection?"

$hidmix = "hide-my-mix " # my mix -
$hidmix_msg = "Do you find MY MIX disturbing?"

$dlvids = "downloads " # download functionality +
$dlvids_msg = "Are you an avid video archiver?"

$cspoof = "client-spoof " # client spoofing +
$cspoof_msg = "Do you want to spoof client? (This usually beneficial to prevent playback issues, we recommend YES)"

$optionsarray = @(
    $swipec,$sektap,$bgpbck,$amoled,$ncreat,$ncastb,
    $rytdis,$hautop,$premiu,$rvncbr,$fscpnl,$olqual,
    $hshort,$hwtrmk,$spsrbk,$wisech,$tabply,$vidbuf,
    $autorp,$microg,$rvncst,$debugs,$speeds,$authdr,
    $savqua,$midrol,$feedad,$infcrd,$crowdf,$tiseek,
    $vibutt,$captcc,$strtsh,$watcvr,$albumc,$autply,
    $autocc,$hidart,$hidcom,$ctheme,$hideml,$hidmix,
    $dlvids,$cspoof
)
$messagearray = @(
    $swipec_msg,$sektap_msg,$bgpbck_msg,$amoled_msg,$ncreat_msg,$ncastb_msg,
    $rytdis_msg,$hautop_msg,$premiu_msg,$rvncbr_msg,$fscpnl_msg,$olqual_msg,
    $hshort_msg,$hwtrmk_msg,$spsrbk_msg,$wisech_msg,$tabply_msg,$vidbuf_msg,
    $autorp_msg,$microg_msg,$rvncst_msg,$debugs_msg,$speeds_msg,$authdr_msg,
    $savqua_msg,$midrol_msg,$feedad_msg,$infcrd_msg,$crowdf_msg,$tiseek_msg,
    $vibutt_msg,$captcc_msg,$strtsh_msg,$watcvr_msg,$albumc_msg,$autply_msg,
    $autocc_msg,$hidart_msg,$hidcom_msg,$ctheme_msg,$hideml_msg,$hidmix_msg,
    $dlvids_msg,$cspoof_msg
)
for ($i = 0; $i -lt $optionsarray.Count; $i++) {
    Write-Host $messagearray[$i];
    $addoptions = Read-Host;

    if ($addoptions -eq "N") {
        $finalcommand = $finalcommand + $optionsarray[$i];
    }
    else {
        $finalCommandInclude = $finalCommandInclude + $optionsarray[$i]; 
    }
}
Clear-Host;
Write-Host "Your final combined commands for EXCLUDED_PATCHES is:`n$finalcommand`n`n";
Write-Host "While your final combined commands for INCLUDED_PATCHES is:`n$finalCommandInclude";