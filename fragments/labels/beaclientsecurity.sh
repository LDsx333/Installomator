beaclientsecurity)
    name="beAClientSecurity"
    type="dmg"
    expectedTeamID="PL45P24U4J"
    downloadURL="https://installer.bea-brak.de/cs/installation/1/beAClientSecurity-Installation.dmg"
    appNewVersion=$(curl -fsL "https://portal.beasupport.de/fragen-antworten/kategorie/client-security/aktuelle-versionen-client-security" | grep 'Client Security Installer:' |  sed -E 's#^.*<li>Client Security Installer: ([0-9\.]+)</li>.*$#\1#;')
    installerTool="beA Client Security Installationsprogramm.app"
    CLIInstaller="beA Client Security Installationsprogramm.app/Contents/MacOS/JavaApplicationStub"
    CLIArguments=(-q)
    ;;
