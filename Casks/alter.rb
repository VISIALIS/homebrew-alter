cask "alter" do
  version "1.11.2"
  sha256 "a1a8eb82fc70957c1f7726ec6ae84d06d9100d04fd3dd5d7a88d0e124a7bf71a"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.2/Alter-1.11.2-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
