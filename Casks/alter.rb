cask "alter" do
  version "1.0.52"
  sha256 "fb34924c887b89461ceccbc69ca72445f0151e5007954858673512ebc96a6fcb"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.52/Alter-1.0.52-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
