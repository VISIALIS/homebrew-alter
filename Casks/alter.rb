cask "alter" do
  version "1.0.39"
  sha256 "2e9d3efcb7db86586d47442f99946a6cf37351caba134d63ae9d7bddf972cf26"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.39/Alter-1.0.39-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
