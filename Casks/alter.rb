cask "alter" do
  version "1.0.42"
  sha256 "0c55819be6bbc87093b86f2ad44c260d567616dbf47f26e4173a942107977092"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.42/Alter-1.0.42-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
