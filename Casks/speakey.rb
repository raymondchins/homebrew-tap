cask "speakey" do
  version :latest
  sha256 :no_check

  url "https://github.com/raymondchins/speakey-releases/releases/latest/download/Speakey.dmg",
      verified: "github.com/raymondchins/speakey-releases/"
  name "Speakey"
  desc "Voice layer for dictation, rewriting and running the Mac"
  homepage "https://getspeakey.com/"

  auto_updates true
  depends_on macos: ">= :sonoma"

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
