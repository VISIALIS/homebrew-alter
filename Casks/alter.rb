cask "alter" do
  version "1.19.0"
  sha256 "a5d191dccd6ac64a2791b5ea5a7c0db067d869766a8f0bfda86ec7e7b752ab82"

  url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/Alter-1.19.0-macOS-Notarized.dmg"
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
