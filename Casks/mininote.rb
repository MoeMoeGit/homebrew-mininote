cask "mininote" do
  version "0.9.0"
  sha256 "3d3c9298baacd3fd5188bd9e943ccfd7bfcf507375ad6aec584f29fede1146b6"

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
