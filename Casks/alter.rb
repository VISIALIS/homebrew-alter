cask "alter" do
  version "1.10.1"
  sha256 "1c861baa745922b2040ecfd25ac9a20d4127e10e435c5762a55fb17e2048f7eb"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.1/Alter-1.10.1-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
