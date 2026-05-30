cask "mininote" do
  version "0.4.3"
  sha256 "8d0a134e5781948fe77a3ad1bd93ef1dff6b9864ae9f34acc9e1971ae4c26689"

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
