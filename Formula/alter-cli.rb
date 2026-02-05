class AlterCli < Formula
  desc "Multi-chain EVM address classifier CLI for developers and automation pipelines"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.37"
  license "MIT"

  on_macos do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-cli-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "a986bf67f7478c37cad660b30437ea2d1188a62e3b50d1ca68924e460bcb03de"
  end

  on_linux do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-cli-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "a986bf67f7478c37cad660b30437ea2d1188a62e3b50d1ca68924e460bcb03de"
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
