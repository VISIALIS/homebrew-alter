cask "alter" do
  version "1.13.9"
  sha256 "8c370ae2fef3ffeb89027b029f00f553209a7e731373dccfd56456a0ea2254bc"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.9/alter-desktop-1.13.9-macos-universal-notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
