cask "alter" do
  version "1.27.0"
  sha256 "7f8afbafc0485b29248c4613e2d7047d153eebcdc9f5b74949472fb1dc9a86f5"

  url "https://github.com/VISIALIS/alter/releases/download/v1.27.0/Alter-1.27.0-macOS-Notarized.dmg"
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
