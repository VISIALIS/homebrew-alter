cask "alter" do
  version "1.30.0"
  sha256 "52d4f2000819ff6e2c81f72d09091ab4dafd9a0d36063453f84789701beacb50"

  url "https://github.com/VISIALIS/alter/releases/download/v1.30.0/Alter-1.30.0-macOS-Notarized.dmg"
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
