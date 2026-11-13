cask "alter" do
  version "1.37.0"
  sha256 "4a73c1af6799b805e212dc0bf2c363a37fe552c736ba81d513c3f5f20ef4d635"

  url "https://github.com/VISIALIS/alter/releases/download/v1.37.0/Alter-1.37.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  depends_on :macos

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
