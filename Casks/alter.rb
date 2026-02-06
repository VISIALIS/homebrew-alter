cask "alter" do
  version "1.0.40"
  sha256 "b255d89032228c996e442381aa09ebc0583dc0ffcc1e93f54554b3d2c38d1ac3"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/Alter-1.0.40-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
