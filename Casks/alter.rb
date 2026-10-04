cask "alter" do
  version "1.31.0"
  sha256 "5b2b67b8c8c6dd8d3d7be80174672ba751be369a150194e3bb239ba00272c731"

  url "https://github.com/VISIALIS/alter/releases/download/v1.31.0/Alter-1.31.0-macOS-Notarized.dmg"
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
