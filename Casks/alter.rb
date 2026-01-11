cask "alter" do
  version "1.0.32"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/VISIALIS/phoenix_0/releases/download/v#{version}/Alter-#{version}-macOS-Notarized.dmg"
  name "Alter"
  desc "Discover the story behind blockchain addresses through visual exploration and relationship mapping"
  homepage "https://github.com/VISIALIS/phoenix_0"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # Detection App Store version (skip si CI/automation)
  preflight do
    unless ENV["ALTER_SKIP_CONFLICT_CHECK"]
      appstore_receipt = "/Applications/Alter.app/Contents/_MASReceipt/receipt"
      if File.exist?(appstore_receipt)
        opoo "Mac App Store version detected at /Applications/Alter.app"
        opoo "It will be replaced by the Homebrew Cask version."
        opoo "Press Ctrl+C to cancel, or wait 3 seconds to continue..."
        sleep 3
      end
    end
  end

  app "Alter.app"

  zap trash: [
    "~/Library/Application Support/com.visialis.alter",
    "~/Library/Caches/com.visialis.alter",
    "~/Library/HTTPStorages/com.visialis.alter",
    "~/Library/Logs/com.visialis.alter",
    "~/Library/Preferences/com.visialis.alter.plist",
    "~/Library/Saved Application State/com.visialis.alter.savedState",
    "~/.alter",
  ]

  caveats <<~EOS
    Installation Conflict Warning

    This Homebrew Cask version conflicts with the Mac App Store version.
    Both install to: /Applications/Alter.app

    Choose ONE installation method:
    - Homebrew: brew upgrade alter
    - App Store: Automatic updates

    For detailed instructions on switching between versions, see:
    https://github.com/VISIALIS/homebrew-alter#installation-conflicts

    Check your installation source:
      codesign -dv /Applications/Alter.app 2>&1 | grep Authority
      - "Apple Distribution" = App Store version
      - "Developer ID Application" = Homebrew version
  EOS
end
