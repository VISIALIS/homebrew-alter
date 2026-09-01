cask "alter" do
  version "1.26.1"
  sha256 "c4f21339c4c2ddecba561a9a8e4f9814b1f92c66fc0d6a971ab1eaf78a041803"

  url "https://github.com/VISIALIS/alter/releases/download/v1.26.1/Alter-1.26.1-macOS-Notarized.dmg"
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
