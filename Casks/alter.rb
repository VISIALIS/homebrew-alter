cask "alter" do
  version "2.0.3"
  sha256 "5411add958c253af9cdcc9271a0d7256b358a61412c2a443deae7beb4e2cf16e"

  url "https://github.com/VISIALIS/alter/releases/download/v2.0.3/Alter-2.0.3-macOS-Notarized.dmg"
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
