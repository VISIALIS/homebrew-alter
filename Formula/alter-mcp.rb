class AlterMcp < Formula
  desc "Multi-chain EVM address classifier MCP server for AI agent integration"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.37"
  license "MIT"

  on_macos do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-mcp-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "7a6b66e405e435566ebb88553ab11c849a1a8ffca641f3491c2f2776ae69a536"
  end

  on_linux do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-mcp-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "7a6b66e405e435566ebb88553ab11c849a1a8ffca641f3491c2f2776ae69a536"
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
