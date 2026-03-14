cask "alter" do
  version "1.5.0"
  sha256 "1cfb6e3fbb67180ba4f977ed3f048b19dcc882466b927cafb98ac4828ac39cc0"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.5.0/Alter-1.5.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
