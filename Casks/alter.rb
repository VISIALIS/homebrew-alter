cask "alter" do
  version "2.0.2"
  sha256 "b8606efdbc34f257ab4ac8165ed24ecdc127f6200922c318c7a1206e8feebade"

  url "https://github.com/VISIALIS/alter/releases/download/v2.0.2/Alter-2.0.2-macOS-Notarized.dmg"
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
