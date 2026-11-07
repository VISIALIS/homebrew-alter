class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.36.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.1/alter-mcp-macos-arm64.tar.gz"
      sha256 "73ced0cc1a1b0a99d78a029e46039270de4b4ea6e7947e3b654ddc1699d39ad4"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.1/alter-mcp-macos-x64.tar.gz"
      sha256 "5a360c5a6b5235701fe9a71e1096c03c97cb3514c2f4305fba804f7b9c1be99b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.1/alter-mcp-linux-arm64.tar.gz"
      sha256 "9b22a75b6cffeca54fb600a23e84c6d306be84fe773fa1be86dd58cd96eace28"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.36.1/alter-mcp-linux-x64.tar.gz"
      sha256 "3658bd6a47469bddd239129075ecf56a005625a7fcd42e5a1e374c588d43f4b4"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
