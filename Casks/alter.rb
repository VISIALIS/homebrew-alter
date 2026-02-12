cask "alter" do
  version "1.0.47"
  sha256 "7a4efe3412bf9943dd18b4fa8ed69022487f9ded57e87a8bdc6bedf1b4fead7e"

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
