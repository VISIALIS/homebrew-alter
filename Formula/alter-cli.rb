class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.48/alter-cli-macos-arm64.tar.gz"
      sha256 "68831b4aa851241877cf9c4f941f4b52762ee472408a5e0277fce00c6c8db857"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.48/alter-cli-macos-x64.tar.gz"
      sha256 "f3c23ce3a366602ec455f54e64e2f0c0daa4b591da221c2ae2fee2a2d937f51d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.48/alter-cli-linux-arm64.tar.gz"
      sha256 "420ed702cb7be11995acf5f39441707a1b088554ddfa4c5280b47325dc6a3c2c"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.48/alter-cli-linux-x64.tar.gz"
      sha256 "bb3037a94f389f768cdd22a2f410300b7d478e502227cd2cd97afbef7be21fdd"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
