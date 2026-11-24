cask "speakey" do
  version "1.2.51"
  sha256 "03ff5130db304052d6dfa1ff9069eb89500cae0db4c4904cf540ebb7177f7747"

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
