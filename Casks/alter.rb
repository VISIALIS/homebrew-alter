cask "alter" do
  version "1.24.0"
  sha256 "84597b5553fff928e5b06b7c9d67cbcd3cbb6b3cad901ab8dee494795b38cd48"

  url "https://github.com/VISIALIS/alter/releases/download/v1.24.0/Alter-1.24.0-macOS-Notarized.dmg"
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
