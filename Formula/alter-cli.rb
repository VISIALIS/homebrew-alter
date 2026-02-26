class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.2.0/alter-cli-macos-arm64.tar.gz"
      sha256 "781e16ff4bb582081ebd51c2fd59dbe55e17ffd37acd307c88a0a8139cb2aac3"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.2.0/alter-cli-macos-x64.tar.gz"
      sha256 "62330adc418a14fea2a6b65a75c0a0547a30e312d4974d47876356b286941532"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.2.0/alter-cli-linux-arm64.tar.gz"
      sha256 "e1e9b1cbb3749b4bbe114141b36d0969989f3341ea0304e6e2523e61ddbdf792"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.2.0/alter-cli-linux-x64.tar.gz"
      sha256 "3c0d7a9243f87c1bb9b325faa6d11cf269960a12cacaf6d0e46bfce39b3de894"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
