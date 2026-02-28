class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.3.0/alter-cli-macos-arm64.tar.gz"
      sha256 "a07d58a31356d001864362aab6140893c61ad68eaa0e677848eea48902b74b5b"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.3.0/alter-cli-macos-x64.tar.gz"
      sha256 "bfa87c6cc409bbc3acecb68d829b4cd669762406c16825b6259b59486610ec28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.3.0/alter-cli-linux-arm64.tar.gz"
      sha256 "910fe95ef0e1614b981f0a9672fe430af46146a0a0a5ff3403b5b8a41e3a7f13"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.3.0/alter-cli-linux-x64.tar.gz"
      sha256 "4fad69b3dc9ea66af426b451dcd09a288d877d1f155ea190484d4c164999a41a"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
