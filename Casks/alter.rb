cask "alter" do
  version "1.0.41"
  sha256 "d7746cd45d730fd5ec487837a29c694d782200d891ef43c8d8e46eda51faf435"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.41/Alter-1.0.41-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
