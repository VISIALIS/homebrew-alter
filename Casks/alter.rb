cask "alter" do
  version "1.0.49"
  sha256 "354bdb88580886c82c3f8b52c4f97deba9eb94ea28e0f488a8da4ae77ca05e67"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.49/Alter-1.0.49-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
