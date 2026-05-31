cask "mininote" do
  version "0.4.4"
  sha256 "6841c712fe102c57b56704ce1903f22127855ba31bd45d3b76592e85b52b94b6"

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
