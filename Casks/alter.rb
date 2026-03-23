cask "alter" do
  version "1.6.0"
  sha256 "ebdb5391086170563b142404e4612b019779019609cd828be6096fb6127cd0da"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.6.0/Alter-1.6.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
