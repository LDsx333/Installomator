arcbrowser)
    name="Arc"
    type="dmg"
    appcastURL="https://releases.arc.net/updates.xml"
    appNewVersion="$(curl -fsL "$appcastURL" | xpath -q -e 'string(//item[1]/enclosure/@sparkle:shortVersionString)' | awk '{print $1}')"
    downloadURL="$(curl -fsL "$appcastURL" | xpath -q -e 'string(//item[1]/enclosure/@url)')"
    expectedTeamID="S6N382Y83G"
    ;;
