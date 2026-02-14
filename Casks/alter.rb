cask "alter" do
  version "1.0.48"
  sha256 "5a359bc3f999f985a7a10a09205b48a2a5ab8b6d505b016f45a8ac1db7ac90fe"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.48/Alter-1.0.48-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
