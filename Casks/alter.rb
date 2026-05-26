cask "alter" do
  version "1.15.1"
  sha256 "e794e96cd86129125f1d847be246d18fcf52574e464dcaf4e1facc9d69d6fa9c"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-desktop-1.15.1-macos-universal-notarized.dmg"
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
