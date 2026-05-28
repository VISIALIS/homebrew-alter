cask "alter" do
  version "1.15.2"
  sha256 "d128ccceaa4f85c6f91ce484d28a9cf432f50deeee57921024d19b379aa749ae"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.2/alter-desktop-1.15.2-macos-universal-notarized.dmg"
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
