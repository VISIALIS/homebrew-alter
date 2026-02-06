class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.39/alter-cli-macos-arm64.tar.gz"
      sha256 "7c28e9e937051693c06e78691d9d062962e376a67d1f38c03534e9871117d4f2"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.39/alter-cli-macos-x64.tar.gz"
      sha256 "32e589d27fa35f44310dee527590ea81abc5b8b7d00a214829fbd5ec9b297143"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.39/alter-cli-linux-arm64.tar.gz"
      sha256 "40758d81247470e39f4d3aa3f2e36271508cf862cd95a5805fc1d899c4ea6a59"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.39/alter-cli-linux-x64.tar.gz"
      sha256 "06b44ff9dd053f0c1761ab1708d1236f70b636341ed3aa867af1530ec217a38a"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
