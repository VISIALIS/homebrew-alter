cask "alter" do
  version "1.0.54"
  sha256 "719a0bdc3ec9cd06d5f4688846b8d41da0265b7a72539ccf99bb161e07876e78"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.54/Alter-1.0.54-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
