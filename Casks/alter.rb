cask "alter" do
  version "2.0.1"
  sha256 "f2ea673ce3dda60dad1340b956f407dcb4a4aa69602d434161f77c6e26141e8e"

  url "https://github.com/VISIALIS/alter/releases/download/v2.0.1/Alter-2.0.1-macOS-Notarized.dmg"
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
