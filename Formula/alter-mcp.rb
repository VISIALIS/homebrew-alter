class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.44/alter-mcp-macos-arm64.tar.gz"
      sha256 "b8423fc5c68a0aa5a83eb62caf6883342b07b9f84b271389746023518e79eb4c"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.44/alter-mcp-macos-x64.tar.gz"
      sha256 "7a43481a9edfd7cdbe667e06beafcbedeefa923a4663b118755a25b1eef5a990"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.44/alter-mcp-linux-arm64.tar.gz"
      sha256 "f59fd97497b15713ff693193a2629e242b84b63634c8c5451f2dc811ab4ce8c7"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.44/alter-mcp-linux-x64.tar.gz"
      sha256 "5119e5224daaa7a13790ae8247ad4f900db7dc6d34b2fd9e3ee2767f5a48c834"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
