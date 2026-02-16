cask "alter" do
  version "1.0.51"
  sha256 "b5e652b646a10527febdbc5657971653fb7e6fa86161d23d1210a8a9d3690c41"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.51/Alter-1.0.51-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
