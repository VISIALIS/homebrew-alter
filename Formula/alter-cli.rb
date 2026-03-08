class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.4.0/alter-cli-macos-arm64.tar.gz"
      sha256 "0ac7e744eb785a2e0c00f432612d516905c11d192d27ed284acdb0ae3eb6d921"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.4.0/alter-cli-macos-x64.tar.gz"
      sha256 "6a8b3ba03f19870e2ebc5a404a5feb5f683ebbda0f8c563a11fc065e86021415"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.4.0/alter-cli-linux-arm64.tar.gz"
      sha256 "37ec772a2ba59bdbae8e5722707bf5f0ed21919b59b7eaea2f61902892324a6a"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.4.0/alter-cli-linux-x64.tar.gz"
      sha256 "539308333ba1f55b00f4fa6ba98606aebd107538f58381511602479c8b84bb4d"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
