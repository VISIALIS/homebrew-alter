cask "alter" do
  version "1.7.0"
  sha256 "9d28c5fdcc04697b2e0797e309dbea67bd565d716e5500368ba51196db408247"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.7.0/Alter-1.7.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
