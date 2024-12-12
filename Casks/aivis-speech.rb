cask "aivis-speech" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:
                "f8320ffc544dcefe2a3cf6f7da56b81c8342a08b7aad5e6bee5598417b6ec397",
         intel:
                "988e1c20e20617f270b49c9c282fbff77d544b869236a14a07998afe6d83a0ec"

  url "https://github.com/Aivis-Project/AivisSpeech/releases/download/#{version}/AivisSpeech-macOS-#{arch}-#{version}.dmg",
      verified: "github.com/Aivis-Project/AivisSpeech/"
  name "AivisSpeech"
  desc "AniConnecting people and technology with emotive synthesized voice"
  homepage "https://aivis-project.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false

  app "AivisSpeech.app"

  zap trash: [
    "~/Library/Application Support/AivisSpeech",
    "~/Library/Application Support/AivisSpeech-Engine",
    "~/Library/Logs/AivisSpeech",
    "~/Library/Preferences/com.aivis-project.aivisspeech.plist",
    "~/Library/Saved Application State/com.aivis-project.aivisspeech.savedState",
  ]
end
