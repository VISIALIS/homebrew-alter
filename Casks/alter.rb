cask "alter" do
  version "1.36.0"
  sha256 "560b0f44bb96de3314e011832f998535005116c0ec50c42fb7bb7034c8557bd3"

  url "https://github.com/VISIALIS/alter/releases/download/v1.36.0/Alter-1.36.0-macOS-Notarized.dmg"
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
