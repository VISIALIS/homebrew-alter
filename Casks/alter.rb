cask "alter" do
  version "1.10.3"
  sha256 "584a80388d900bf3c07c1d61f053c1e72bc7e9ea772fd082bf76c8fead0a4891"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.3/Alter-1.10.3-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
