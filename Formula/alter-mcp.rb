class AlterMcp < Formula
  desc "Multi-chain EVM address classifier MCP server for AI agent integration"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.37"
  license "MIT"

  on_macos do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-mcp-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "1f559c7fbd48260d93f6f78f522d3a96eb87c75538a10de10fa54baef3d5da4b"
  end

  on_linux do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-mcp-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "1f559c7fbd48260d93f6f78f522d3a96eb87c75538a10de10fa54baef3d5da4b"
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
