cask "alter" do
  version "1.28.0"
  sha256 "78542cda4024af10d4e41cd9f8c8db74664151474f23b425500c94aa319ca658"

  url "https://github.com/VISIALIS/alter/releases/download/v1.28.0/Alter-1.28.0-macOS-Notarized.dmg"
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
