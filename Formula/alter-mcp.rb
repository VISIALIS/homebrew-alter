class AlterMcp < Formula
  desc "Multi-chain EVM address classifier MCP server for AI agent integration"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.36"
  license "MIT"

  on_macos do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.36/alter-mcp-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "107b42b789536cbe112cbe9002f56d3942ba32c067280dd97f0eca93d93f11a6"
  end

  on_linux do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.36/alter-mcp-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "107b42b789536cbe112cbe9002f56d3942ba32c067280dd97f0eca93d93f11a6"
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
