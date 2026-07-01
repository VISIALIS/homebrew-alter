cask "alter" do
  version "1.18.1"
  sha256 "a222f86fea58256aa421eace70113433be3142d3ab363005a37d07009f28a3f8"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.18.1/Alter-1.18.1-macOS-Notarized.dmg"
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
