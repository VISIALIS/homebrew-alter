cask "alter" do
  version "1.10.2"
  sha256 "48606444183cf3a11faae5343245bf9c1480aeb3e0d39ce9b7d085d4b67bfd2d"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.2/Alter-1.10.2-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
