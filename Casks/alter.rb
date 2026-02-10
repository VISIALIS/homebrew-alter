cask "alter" do
  version "1.0.44"
  sha256 "2e81741ecb6d4fe30273768807ea2dfc758213f15add42e09097f653d45ad1a3"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.44/Alter-1.0.44-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
