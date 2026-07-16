class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.21.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "5a87c6eda09bb0307830557efabfc6d8bc5d913f148fc2c22ebe464762aaa1e0"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.21.0/alter-mcp-macos-x64.tar.gz"
      sha256 "85ff56a4418602c1ae6cd657d671bc729bacc5af49e44ed2a492f8c7bf050e73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.21.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "d00747526f4edc767a17ecd28cf7d7a26fe51971c16df160e6c269987d6bfa7b"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.21.0/alter-mcp-linux-x64.tar.gz"
      sha256 "9c7cd4749cd01e8df95928241ad31ed5c73cdd9cd78bc77b8f4fa2cb50ed2981"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
