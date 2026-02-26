cask "alter" do
  version "1.2.0"
  sha256 "89ebb02714d3f91ded05a55af86c2de3db4b25bf00c4bc87c46c2748f961532c"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.2.0/Alter-1.2.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
