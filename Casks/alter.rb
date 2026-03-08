cask "alter" do
  version "1.4.0"
  sha256 "6a5ec6d986119c2d44469320f90f0c703a0be4754b40741609589461458f5e21"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.4.0/Alter-1.4.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
