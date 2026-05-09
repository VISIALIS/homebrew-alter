cask "alter" do
  version "1.11.1"
  sha256 "574d0c1a7beba810751dcb0a151fc617f19233f2e44ea4c0118b0edad8771981"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.1/Alter-1.11.1-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
