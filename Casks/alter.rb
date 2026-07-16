cask "alter" do
  version "1.21.0"
  sha256 "e2b8342352a11f384068cfc4b43c247001085f48ecc76d0a93d19be66c3f9404"

  url "https://github.com/VISIALIS/alter/releases/download/v1.21.0/Alter-1.21.0-macOS-Notarized.dmg"
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
