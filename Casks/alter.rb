cask "alter" do
  version "1.1.0"
  sha256 "d8f5b1cef6b579fc09a1545213dc7eb04b9df223b918f5004beb789ca74a1859"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.1.0/Alter-1.1.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
