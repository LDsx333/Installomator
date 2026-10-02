reinersctcyberjackdriver)
    name="REINER SCT cyberJack driver"
    type="pkg"
    expectedTeamID="5A7M4P6EPT"
    [[ $(arch) == "arm64" ]] && arch="$(arch)" || arch="x86_64"
    downloadURL=$(curl -fsL "https://help.reiner-sct.com/en/support/solutions/articles/101000480002-macos-driver-for-cyberjack-smart-card-reader" | grep -Eo "https://support.reiner-sct.de/downloads/MAC/pcsc-cyberjack_[a-zA-Z0-9\.]+-${arch}-signed.pkg" | head -1)
    appNewVersion="$(echo $downloadURL | sed -E 's#^.*/(pcsc-cyberjack_[a-zA-Z0-9\.]+)-.*#\1#')"
    packageID=${$(pkgutil --pkgs | grep -E "com.reiner-sct.pcsc-cyberjack_[a-zA-Z0-9\.]+" | head -1):-"com.reiner-sct.${appNewVersion}"}
    ;;
