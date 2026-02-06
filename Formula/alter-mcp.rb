class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-mcp-macos-arm64.tar.gz"
      sha256 "e5002003103fd772572b6c31befc3fa43fcacb8b4468a03958d482e8a8ee7a8b"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-mcp-macos-x64.tar.gz"
      sha256 "7c5dc03ff62da5740cb890ed1ac6316e20b1333860f186fdee9aa3b451aa4bc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-mcp-linux-arm64.tar.gz"
      sha256 "22bd5febba203b83f18a330cb0a3346c51ab22bf4ee30adeca6fd6cfe4ceb829"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-mcp-linux-x64.tar.gz"
      sha256 "eb2045d92ebd99ee8738c17bd624908521687b8a953456e74d1177d6f0bb9751"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
