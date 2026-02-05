class AlterCli < Formula
  desc "Multi-chain EVM address classifier CLI for developers and automation pipelines"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.37"
  license "MIT"

  on_macos do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-cli-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "cc7586416cac1e7d66ec7e3166949478db02e1c4e38eeda7d62095b27df954b0"
  end

  on_linux do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-cli-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "cc7586416cac1e7d66ec7e3166949478db02e1c4e38eeda7d62095b27df954b0"
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
