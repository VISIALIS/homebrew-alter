class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.1/alter-mcp-macos-arm64.tar.gz"
      sha256 "c8de3bb85763ccec67b0381b6f1d50305586e536370bc5fc861578eaea143cd1"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.1/alter-mcp-macos-x64.tar.gz"
      sha256 "7df26168a77ab0ab5e894a41c7fa58e9f5184f86dbe1a84b7ba5dc2b24215e01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.1/alter-mcp-linux-arm64.tar.gz"
      sha256 "8846a1826d6b57b5fcefa82b59767fe06da0879a149051ce8687db2746529dc0"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.1/alter-mcp-linux-x64.tar.gz"
      sha256 "8a0299bb21874bf697d2cba627a595085c3c0afc2b6717d69a459a2a651ae6b9"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
