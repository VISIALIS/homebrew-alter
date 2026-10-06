cask "alter" do
  version "1.31.1"
  sha256 "a8f80c787c5b01dbfb5528567493e010128a89c6927343569fc413879f2a791a"

  url "https://github.com/VISIALIS/alter/releases/download/v1.31.1/Alter-1.31.1-macOS-Notarized.dmg"
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
