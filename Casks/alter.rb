cask "alter" do
  version "2.0.4"
  sha256 "62708fba50cfb2dbae581ff31eb2e3aadff8484f7be9faaebbe2d898bcef9393"

  url "https://github.com/VISIALIS/alter/releases/download/v2.0.4/Alter-2.0.4-macOS-Notarized.dmg"
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
