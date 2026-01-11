class AlterCli < Formula
  desc "Multi-chain EVM address classifier CLI for developers and automation pipelines"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.36"
  license "MIT"

  on_macos do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.36/alter-cli-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "db01ff2f6aff2da3e9740ebf0305c71ea4f5da1802af1c3034049b4ae88d4828"
  end

  on_linux do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.36/alter-cli-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "db01ff2f6aff2da3e9740ebf0305c71ea4f5da1802af1c3034049b4ae88d4828"
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
