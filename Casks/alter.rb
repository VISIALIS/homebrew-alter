cask "alter" do
  version "1.12.0"
  sha256 "10b4a98cd2da4585665ab1e6a99b7bfd6982017a931de8c111ad8744117a584d"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.12.0/Alter-1.12.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
