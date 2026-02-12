cask "alter" do
  version "1.0.46"
  sha256 "1d7a81731b1a7672fedbbaa23b4ec581dba5c3c04d9d9f1efe7748394eececf1"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.46/Alter-1.0.46-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
