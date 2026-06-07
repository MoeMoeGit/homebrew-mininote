cask "mininote" do
  version "0.7.1"
  sha256 "98054935ee3cb9da8390c094474e2caab4acb25c4f7087b5884a5a1ff9e9f4b5"

  url "https://github.com/vivalucas/mininote/releases/download/v#{version}/mininote-#{version}-macos-arm64.dmg"
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
