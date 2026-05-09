cask "alter" do
  version "1.11.3"
  sha256 "432043295765418180aa2fabe2f712c85ecbee24c502e9932846cc0a7a288864"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.3/Alter-1.11.3-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
