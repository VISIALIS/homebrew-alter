cask "alter" do
  version "1.35.0"
  sha256 "96b89207e34c703521ab3f961467568884ed83485c61b61488dcac9c9fb71d61"

  url "https://github.com/VISIALIS/alter/releases/download/v1.35.0/Alter-1.35.0-macOS-Notarized.dmg"
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
