class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.15.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-mcp-1.15.1-macos-arm64.tar.gz"
      sha256 "35c21b96e7fd9063254abd367d6b6e69e8d5bbafa52f3b699021b022177cc68c"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-mcp-1.15.1-macos-x64.tar.gz"
      sha256 "7c6361e423ad60a34c4226120be20bb4a7251b58d0f581dcfca236b5d8098130"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-mcp-1.15.1-linux-arm64.tar.gz"
      sha256 "af66086b6aa3e64d21dbad07ce9056dd103b77049ed9115cd2fa7ba0bb9be40a"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.1/alter-mcp-1.15.1-linux-x64.tar.gz"
      sha256 "fd839735dca14cc016fb63162dd08ae03db5f756f9c4b29e9111dd888276879c"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
