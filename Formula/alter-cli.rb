class AlterCli < Formula
  desc "CLI tool for blockchain address classification and analysis"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.26" # Updated automatically by CD
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/alter-brew/releases/download/v1.0.26/alter-cli-macos-arm64.tar.gz"
      sha256 "bf1c20450f023decd0bb0da8658e88d9d0dbb5c9e2592eaaf15dcadf23a302b2" # Updated automatically by CD
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
