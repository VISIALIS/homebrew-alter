class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.50/alter-mcp-macos-arm64.tar.gz"
      sha256 "15e0d0e4c4d7252bb4cbe525db56c2fe763a79e08e9a79bfdbd5e92c2037376e"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.50/alter-mcp-macos-x64.tar.gz"
      sha256 "3c8072218901e1d2ddee06476ec0b047ff5cf3e9699995223ba45eb8fe73af3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.50/alter-mcp-linux-arm64.tar.gz"
      sha256 "ad97fd9276816e87972b9867fbb296a8da324342e8f11b8cb9e1e61244e0ac44"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.50/alter-mcp-linux-x64.tar.gz"
      sha256 "c64cbb5ef3c478013b6879397e84d52add2a2c6840e01c611d4bd357b52c04fb"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
