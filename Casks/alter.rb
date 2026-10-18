cask "alter" do
  version "1.32.1"
  sha256 "88592b1e64cdcd1fd4c44a456a3f4e8aafb84fc29642f9ad07d44ae3d4a76686"

  url "https://github.com/VISIALIS/alter/releases/download/v1.32.1/Alter-1.32.1-macOS-Notarized.dmg"
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
