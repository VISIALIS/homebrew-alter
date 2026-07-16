cask "alter" do
  version "1.22.0"
  sha256 "814794c8047fa1bffb00f5aaa83420d8bceee228cb72286ecf0d75c7b16bc3b9"

  url "https://github.com/VISIALIS/alter/releases/download/v1.22.0/Alter-1.22.0-macOS-Notarized.dmg"
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
