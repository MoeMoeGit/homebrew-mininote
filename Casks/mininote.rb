cask "mininote" do
  version "0.3.1"
  sha256 "b1bf96b332761b30a6e05bee5d7ecf45aecf25180b122a46447a51ca5d971370"

  url "https://github.com/vivalucas/mininote/releases/download/v#{version}/MiniNote-#{version}.dmg",
      verified: "github.com/vivalucas/mininote/"
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
