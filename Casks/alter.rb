cask "alter" do
  version "1.0.40"
  sha256 "063c79e0a1499e0d2538099474cbb28d0f55afa90383367ebd145b017f73fab6"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/Alter-1.0.40-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
