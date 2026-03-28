class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.7.0/alter-cli-macos-arm64.tar.gz"
      sha256 "cacec61bf0a8a38856df6e1bb952d924fdc0f52d6305cd7594061cebd3f0e23d"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.7.0/alter-cli-macos-x64.tar.gz"
      sha256 "05afe8ce26a23e219a8aaed5c57f78087a66369f2275c640b5c843963f8c0b2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.7.0/alter-cli-linux-arm64.tar.gz"
      sha256 "08b7c0bcfdd1b7f23b9d82b663c6126b5eaf0839efd96e2c77cd401c2abfdddf"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.7.0/alter-cli-linux-x64.tar.gz"
      sha256 "86ebdd5b379639bdbaaab54adbe596e69fd9aa4228c56f6fae52dd4f7fbee9c1"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
