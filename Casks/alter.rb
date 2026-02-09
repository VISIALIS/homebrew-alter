cask "alter" do
  version "1.0.43"
  sha256 "38c63be70bed44f7508d95e4ee37eaf4c915072cbe0164d1448dd09406680379"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.43/Alter-1.0.43-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
