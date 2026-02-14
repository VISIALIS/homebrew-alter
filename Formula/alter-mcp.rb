class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.49/alter-mcp-macos-arm64.tar.gz"
      sha256 "153086f02aea97484e70afd3e1f1b2b2c6df3a3b920bea8c6f25e18544e1cd75"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.49/alter-mcp-macos-x64.tar.gz"
      sha256 "686f35e2861820ed8836461f6847c9f0310742ed7392a0d0b00f19ed60972647"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.49/alter-mcp-linux-arm64.tar.gz"
      sha256 "6f92cbd950fa90605e76a23e242a396078cd7fd98428c0f22cedb870d32b74c0"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.49/alter-mcp-linux-x64.tar.gz"
      sha256 "69ea3b97f00a5b24ec82cabd8a93a84c8d07c6141f9b5efb51eb6a8649da9343"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
