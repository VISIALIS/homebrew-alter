cask "alter" do
  version "1.17.0"
  sha256 "62835d3ff724f59afb4e6e8b20a73ed15fbe6f1e8178eb6544b757903ca35525"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.0/alter-desktop-1.17.0-macos-universal-notarized.dmg"
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
