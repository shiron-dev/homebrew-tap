cask "dmm-game-player" do
  version :latest
  sha256 "53782c41ecbb92991e25f41deba810ec59c844a8e30457dc14bdb3010a8996b7"

  url "https://apidgp-gameplayer.games.dmm.com/archive/latest?app=dgp5mac"
  name "DMM Game Player"
  desc "Game client for the DMM Games platform"
  homepage "https://player.games.dmm.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "DMMGamePlayer.app"

  zap trash: [
    # "~/Library/Application Support/dmm",
    # "~/Library/Preferences/com.dmm.gameplayer5-mac.plist",
    # "~/Library/Saved Application State/com.dmm.gameplayer5-mac.savedState",
  ]
end
