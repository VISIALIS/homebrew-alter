cask "alter" do
  version "1.34.0"
  sha256 "c65ab91ffb1ffae5991dbd1b03f1ef8fbcf15bba81c1c71f5e3006a771077202"

  url "https://github.com/VISIALIS/alter/releases/download/v1.34.0/Alter-1.34.0-macOS-Notarized.dmg"
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
