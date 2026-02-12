class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-cli-macos-arm64.tar.gz"
      sha256 "f89d44f7c2a91c2fa28db21a079ccd62ffc00a7876d1d1dafadee34a9ba09526"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-cli-macos-x64.tar.gz"
      sha256 "cea6f5999040dd9783a883db4aee3e545cdc5b674fd388a98e5e83066886f303"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-cli-linux-arm64.tar.gz"
      sha256 "70c6fff8559bc79e3a0f53e1a0476bd245f49bfd4e7aba38cc7aa4e26c6c3bd6"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-cli-linux-x64.tar.gz"
      sha256 "cfff6035eddd39f4bcaf6bd2568610b8b418945012a6269699b8330a7f01ce37"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
