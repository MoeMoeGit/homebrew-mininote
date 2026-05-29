cask "mininote" do
  version "0.4.1"
  sha256 "e67e0d23b682d77c39c2a6cecfe36e285f8e2596edb8137b430c2417623ee13e"

  url "https://github.com/vivalucas/mininote/releases/download/v#{version}/MiniNote-#{version}.dmg"
  name "MiniNote"
  desc "Minimal note app"
  homepage "https://github.com/vivalucas/mininote"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "MiniNote.app"

  zap trash: [
    "~/Library/Application Support/MiniNote",
    "~/Library/Caches/com.mininote.app",
    "~/Library/Preferences/com.mininote.app.plist",
    "~/Library/Saved Application State/com.mininote.app.savedState",
  ]
end
