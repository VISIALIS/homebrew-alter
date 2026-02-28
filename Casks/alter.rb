cask "alter" do
  version "1.3.0"
  sha256 "f141b117909aebf1322ac90911324449e9caa5d9f8db376b6894cc661c82d63f"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.3.0/Alter-1.3.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
