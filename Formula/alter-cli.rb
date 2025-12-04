class AlterCli < Formula
  desc "CLI tool for blockchain address classification and analysis"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "0.0.0" # Updated automatically by CD
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/alter-brew/releases/download/v0.0.0/alter-cli-macos-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # Updated automatically by CD
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
