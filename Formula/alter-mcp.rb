class AlterMcp < Formula
  desc "Multi-chain EVM address classifier MCP server for AI agent integration"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.38"
  license "MIT"

  on_macos do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.38/alter-mcp-macos.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "bbe600efc221bdee3e747274e008f51b88b6b54e52a5996fb4fff18767d6d4b0"
  end

  on_linux do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.38/alter-mcp-macos.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "bbe600efc221bdee3e747274e008f51b88b6b54e52a5996fb4fff18767d6d4b0"
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
