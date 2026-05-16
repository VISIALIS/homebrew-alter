cask "alter" do
  version "1.15.0"
  sha256 "8b30301a98823fb3cdb8787f8cea0d3a9e30a8fbaa3c28d14dfe4f5b608bc74b"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.0/alter-desktop-1.15.0-macos-universal-notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
