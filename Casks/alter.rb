cask "alter" do
  version "1.25.0"
  sha256 "ef1012ad2cc3a59ab9b2adf52ea491e21841c55f23141ff5517994044cfc9ec5"

  url "https://github.com/VISIALIS/alter/releases/download/v1.25.0/Alter-1.25.0-macOS-Notarized.dmg"
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
