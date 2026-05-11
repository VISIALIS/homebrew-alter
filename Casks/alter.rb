cask "alter" do
  version "1.13.1"
  sha256 "3f3f9757761fff2b8b5b41dd6e0a20021463e0b0841c5b8febcfba7b65b7d60c"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.1/Alter-1.13.1-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
