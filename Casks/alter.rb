cask "alter" do
  version "1.13.3"
  sha256 "156275198e947e91985e4a533a924b84c8565e3394914500c3a393fb6188e21b"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.3/Alter-1.13.3-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
