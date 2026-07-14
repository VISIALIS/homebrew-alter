cask "alter" do
  version "1.20.0"
  sha256 "5a85b19fd24d9c9b984c3045ecb4e7999c271861224bc52b112a5e717a29833c"

  url "https://github.com/VISIALIS/alter/releases/download/v1.20.0/Alter-1.20.0-macOS-Notarized.dmg"
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
