cask "mininote" do
  version "0.3.3"
  sha256 "0a39e4333fcc25961c0a6173ae0566f5d2410ebff330c135db6ba0e0d4c8eb24"

  url "https://github.com/vivalucas/mininote/releases/download/v#{version}/MiniNote-#{version}.dmg"
  name "MiniNote"
  desc "Minimal note app for macOS"
  homepage "https://github.com/vivalucas/mininote"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MiniNote.app"

  zap trash: [
    "~/Library/Application Support/MiniNote",
    "~/Library/Caches/com.mininote.app",
    "~/Library/Preferences/com.mininote.app.plist",
    "~/Library/Saved Application State/com.mininote.app.savedState",
  ]
end
