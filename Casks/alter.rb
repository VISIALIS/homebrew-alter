cask "alter" do
  version "1.23.0"
  sha256 "e54ede8cb88a9b80bc71fe1032aff3f77e3bed8fb9594ebaa3ed5bfc29357311"

  url "https://github.com/VISIALIS/alter/releases/download/v1.23.0/Alter-1.23.0-macOS-Notarized.dmg"
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
