cask "alter" do
  version "1.29.0"
  sha256 "b3e67a7d172e6b35dbf9857049f90828688deda338e3304ade2d32d243006e7d"

  url "https://github.com/VISIALIS/alter/releases/download/v1.29.0/Alter-1.29.0-macOS-Notarized.dmg"
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
