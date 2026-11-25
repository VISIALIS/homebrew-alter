cask "alter" do
  version "1.40.0"
  sha256 "e3c264eed9bd162860a2ff5decd2a48ab741011677c2d1667e575ff3b76acffa"

  url "https://github.com/VISIALIS/alter/releases/download/v1.40.0/Alter-1.40.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  depends_on :macos

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
