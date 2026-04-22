cask "alter" do
  version "1.9.0"
  sha256 "39bc2a9c4a0c1758a16506d90ff63b8f5fcb1b52e39702b27e642249f0bf37f9"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.9.0/Alter-1.9.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
