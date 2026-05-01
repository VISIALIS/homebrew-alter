cask "alter" do
  version "1.10.0"
  sha256 "e77bf036a0584ce28316175ade3ff3e5918a499afe4f1e1dce56a058bb1c825d"

  url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.0/Alter-1.10.0-macOS-Notarized.dmg"
  name "Alter"
  desc "Multi-chain EVM address classification desktop app"
  homepage "https://github.com/VISIALIS/phoenix_0"

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
  ]
end
