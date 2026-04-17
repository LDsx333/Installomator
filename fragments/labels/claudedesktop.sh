claudedesktop)
    name="Claude"
    appName="Claude.app"
    type="zip"
    downloadURL=$(getJSONValue "$(curl -fs https://downloads.claude.ai/releases/darwin/universal/RELEASES.json)" ".releases[0].updateTo.url")
    appNewVersion=$(getJSONValue "$(curl -fsL https://downloads.claude.ai/releases/darwin/universal/RELEASES.json)" "releases[0].updateTo.version")
    expectedTeamID="Q6L2SF6YDW"
    ;;
