class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.4.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "c4247b7a92804674f1370eb208aaf2f58e0488594975d1f6f1747c5cb6c80de6"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.4.0/alter-mcp-macos-x64.tar.gz"
      sha256 "d38b7eab065347c9d94666b97a199085555bea4aa6544fabef595b2dcffc3923"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.4.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "fe5e1483cafcb274ab78d58274ab3f18a0552f7ad9c5fcb5a758758ec45b7583"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.4.0/alter-mcp-linux-x64.tar.gz"
      sha256 "5b2a75c894bd2aac70ca15cdb9c0dcb4f5330ecc47d36096068a98facee8c5d3"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
