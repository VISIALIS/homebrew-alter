cask "alter" do
  version "1.11.0"
  sha256 "3dc47f8c73685cb73383c82c6e1298e0f5b67bc608de68211075b42adc1c85ce"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.0/Alter-1.11.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
