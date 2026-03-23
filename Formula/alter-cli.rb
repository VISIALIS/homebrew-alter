class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.6.0/alter-cli-macos-arm64.tar.gz"
      sha256 "532e68dbe1a426e0cc0a59a8eda59ed70065f9a8226d22baf422764d318422f4"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.6.0/alter-cli-macos-x64.tar.gz"
      sha256 "f617514f2a9e687480a3de3c5c61a923445c21c0ba262f9cb4e65348ca2937bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.6.0/alter-cli-linux-arm64.tar.gz"
      sha256 "04ac4910e9dd01237cbe184c3dd9a9c16e1a68445baf89e0b0be3815ece5d2b4"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.6.0/alter-cli-linux-x64.tar.gz"
      sha256 "414df8176be857e16336f6efa99cb3ca51a3162afeb935de6f87e494ab96b88d"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
