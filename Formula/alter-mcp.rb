class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.9/alter-mcp-1.13.9-macos-arm64.tar.gz"
      sha256 "f8fb4f3d6cc334da1ec0dc0981b687bf501fe745facc64fb9e6a514f30472f22"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.9/alter-mcp-1.13.9-macos-x64.tar.gz"
      sha256 "fcabad82f54f635b1ac5eb93e5be0a52ada7a404b65a9fda510adbc34ae24f23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.9/alter-mcp-1.13.9-linux-arm64.tar.gz"
      sha256 "05aa1b6cce933db4b54453456cf7d5f8bf4c354fdb042b20243e9303367ca614"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.9/alter-mcp-1.13.9-linux-x64.tar.gz"
      sha256 "251b864b1d928765c31201bcb5c97ab76e45a0d3e133570aa424097cce274901"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
