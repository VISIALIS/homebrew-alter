cask "alter" do
  version "1.13.5"
  sha256 "3d774f857fef53799ee7dcd194615fe8bd1ab1c9cb34308b8622852104246b9d"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.5/Alter-1.13.5-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
