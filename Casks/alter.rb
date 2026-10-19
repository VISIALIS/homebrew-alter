cask "alter" do
  version "1.33.0"
  sha256 "17370415ca54957878b3deef9e9330f6c4333c74399a67ad93d2c31525c668f1"

  url "https://github.com/VISIALIS/alter/releases/download/v1.33.0/Alter-1.33.0-macOS-Notarized.dmg"
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
