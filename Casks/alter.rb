cask "alter" do
  version "2.0.0"
  sha256 "d046482e9da30e886dac8c6b0b3c472a7448939558fbeb0a4893450ba6364159"

  url "https://github.com/VISIALIS/alter/releases/download/v2.0.0/Alter-2.0.0-macOS-Notarized.dmg"
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
