cask "alter" do
  version "1.10.4"
  sha256 "776de1b011127c734c8dc85b709ad6e10c68ab0742ebfdcedab8c82069d5046d"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.4/Alter-1.10.4-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
