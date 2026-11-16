cask "alter" do
  version "1.38.0"
  sha256 "927dc821531f88e7fd899ee3f8036378a447d3a58059977db5629c66d989ef7a"

  url "https://github.com/VISIALIS/alter/releases/download/v1.38.0/Alter-1.38.0-macOS-Notarized.dmg"
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
