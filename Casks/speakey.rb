cask "speakey" do
  version "1.2.52"
  sha256 "28d612987c4f4a94d071ef316ea4809a08f5944977f9b92f6297ded0e4fbc4c2"

  url "https://github.com/raymondchins/speakey-releases/releases/download/v#{version}/Speakey.dmg"
  name "Speakey"
  desc "Voice dictation, rewriting and computer control"
  homepage "https://getspeakey.com/"

  livecheck do
    url "https://github.com/raymondchins/speakey-releases/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Speakey.app"

  uninstall quit: "com.raymondchins.speakey"

  zap trash: [
    "~/.config/speakey",
    "~/Library/Application Support/Speakey",
    "~/Library/Caches/com.raymondchins.speakey",
    "~/Library/Caches/Speakey",
    "~/Library/HTTPStorages/com.raymondchins.speakey",
    "~/Library/Logs/Speakey*.log",
    "~/Library/Preferences/com.raymondchins.speakey.plist",
    "~/Library/Saved Application State/com.raymondchins.speakey.savedState",
    "~/Library/WebKit/com.raymondchins.speakey",
  ]
end
