class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-mcp-macos-arm64.tar.gz"
      sha256 "b1018195ef8014a908fb49e4c896ca4b1f41074e54e4b899abc83ceb8c8567d8"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-mcp-macos-x64.tar.gz"
      sha256 "25d36d5879a3a6851e279714fb5db42b045dc7ab086c82241faef4d3cff3aeed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-mcp-linux-arm64.tar.gz"
      sha256 "990bf008dc47c6b1e50372ae7f15f1131f5f3a8452031a661e2cc6e36769462f"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-mcp-linux-x64.tar.gz"
      sha256 "8b4b14064dedc096206c26827980ba0b7d2b1a87b9533e9db289eaa654188005"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
