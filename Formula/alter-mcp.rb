class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "6ebb33a72b7f390f09f184da52d56db0f78662de11a08f20b8d667710c1512c5"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.0/alter-mcp-macos-x64.tar.gz"
      sha256 "c1281b52d77dcd24477e2751f9cd7914ed87cd79092ae1be6a9fae5c6f5b79b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "647100793ce7395a31def685cce5c8f085c31f74607cb979cfc2b1556447a7c3"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.0/alter-mcp-linux-x64.tar.gz"
      sha256 "bfab858a38eb9349cc443fb136720e3f86ae80c82afc7b11a9d1e305124f9f8e"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
