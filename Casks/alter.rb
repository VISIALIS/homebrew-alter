cask "alter" do
  version "1.13.7"
  sha256 "d9d1e8f50408c48b648e1d78388a5a99ec2b136410d0e75474e2b749c9547022"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.7/Alter-1.13.7-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
