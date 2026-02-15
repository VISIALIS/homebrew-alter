cask "alter" do
  version "1.0.50"
  sha256 "b0f9e2fa09ea4ebaf3bc8434f3700987aa9b0471e5f75a415465a879fe9754f1"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.50/Alter-1.0.50-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
