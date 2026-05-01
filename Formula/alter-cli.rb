class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.0/alter-cli-macos-arm64.tar.gz"
      sha256 "a5f8f882c4f6204cfb402a1ed94b4bff0969e909a770177022e7d2bd28763345"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.0/alter-cli-macos-x64.tar.gz"
      sha256 "46f307037a09cebd26c04d15f34de8d26b0897ee9beb24b94618f51228b0dc33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.0/alter-cli-linux-arm64.tar.gz"
      sha256 "89c17fe02ed3d078c5b8822a9d976a4f3eec0cf03e4d92dde5872986742a5eec"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.0/alter-cli-linux-x64.tar.gz"
      sha256 "a0abce07ed4e3ae5adca06f2a8994fc8a47d83f6d5bd4f1fb006e5d1b7bc2b65"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
