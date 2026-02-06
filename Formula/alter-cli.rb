class AlterCli < Formula
  desc "Multi-chain EVM address classifier CLI for developers and automation pipelines"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.38"
  license "MIT"

  on_macos do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.38/alter-cli-macos.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "ece714a86b42dfc5ca4d66377be5594e8676390576c5edfb7abd3119ff8e93fe"
  end

  on_linux do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.38/alter-cli-macos.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "ece714a86b42dfc5ca4d66377be5594e8676390576c5edfb7abd3119ff8e93fe"
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
