cask "alter" do
  version "1.13.2"
  sha256 "1c061d115ce8b5748cef615a9159370ca4d835349344519bbabb1c60579e9b50"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.2/Alter-1.13.2-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
