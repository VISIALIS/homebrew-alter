cask "alter" do
  version "1.39.0"
  sha256 "d9557455fff5440f5a98851889ab2b782e36120d973d8e19591b42471497979e"

  url "https://github.com/VISIALIS/alter/releases/download/v1.39.0/Alter-1.39.0-macOS-Notarized.dmg"
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
