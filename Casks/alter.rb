cask "alter" do
  version "1.0.47"
  sha256 "8fbc736d6dd6f85330d4316ebc6b0d0a721b258c588bda1a8906d976a5b22c8c"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/Alter-1.0.47-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
