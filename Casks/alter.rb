cask "alter" do
  version "1.26.0"
  sha256 "56d467fc12087e6613cfb76daf9a80412433ce7cd42731bff95c3274e001da31"

  url "https://github.com/VISIALIS/alter/releases/download/v1.26.0/Alter-1.26.0-macOS-Notarized.dmg"
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
