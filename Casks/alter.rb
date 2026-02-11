cask "alter" do
  version "1.0.45"
  sha256 "064b5e5bb85079373e9d2d572e1e4c9e1f0078f1392b4f1822cf6eb53b4a7a76"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.45/Alter-1.0.45-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
