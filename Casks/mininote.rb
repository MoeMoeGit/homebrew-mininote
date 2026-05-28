cask "mininote" do
  version "0.3.8"
  sha256 "25e86ce4163095385bcc4145a80e5613f4432c0d7c2e9e368ee8d1cfda626854"

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
