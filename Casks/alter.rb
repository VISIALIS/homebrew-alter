cask "alter" do
  version "1.13.0"
  sha256 "63774814650cab9d1ce49747f12f67e1d76fdd36397411950bb881b7ea312fcb"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.0/Alter-1.13.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
