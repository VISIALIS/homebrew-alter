cask "alter" do
  version "1.16.0"
  sha256 "87f6d7f66898f330ad222db0b8f0b22d000099034b06e15e3696df9390c62819"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.16.0/alter-desktop-1.16.0-macos-universal-notarized.dmg"
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
