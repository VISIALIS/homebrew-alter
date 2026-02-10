class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.44/alter-cli-macos-arm64.tar.gz"
      sha256 "753f5f03d17ce5943dce11cac643b18cd9850ee784f3b2e629b297c3e6021b20"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.44/alter-cli-macos-x64.tar.gz"
      sha256 "36c9ca87ca1bc67486a4d6d25ebc94867cbb964ca232413aabc58d929253d95f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.44/alter-cli-linux-arm64.tar.gz"
      sha256 "3aa99ca0807bf60e1869b3886f39571d08106bedfc2b21d1769083bb2678ccfa"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.44/alter-cli-linux-x64.tar.gz"
      sha256 "9566cfc6450583d842a56124c4bfc033d610cc9a0a3bff2dbe8f0541a4a22d43"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
