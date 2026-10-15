cask "alter" do
  version "1.32.0"
  sha256 "e189b00c8ccd4431893b1d7bf44300c212f2768f5d4cbc6e0124a0ea97875e54"

  url "https://github.com/VISIALIS/alter/releases/download/v1.32.0/Alter-1.32.0-macOS-Notarized.dmg"
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
