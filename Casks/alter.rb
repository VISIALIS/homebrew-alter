cask "alter" do
  version "1.36.1"
  sha256 "31684d55adf39a8a997ff53438517951a64c4e7e3afe4e898dc2bebfb286050d"

  url "https://github.com/VISIALIS/alter/releases/download/v1.36.1/Alter-1.36.1-macOS-Notarized.dmg"
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
