class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.1.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "33b070f15b98fd819b4cfc1f82e271779b3a11811c803cb6592a87a055e13050"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.1.0/alter-mcp-macos-x64.tar.gz"
      sha256 "c422bb877eedfef651bafd7476670166b46c6eb1af66ddba272b7af62eba8a0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.1.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "87e7542e37648d974464c8b6b26e337608d66c5fff7bf5b8eb03f0c2533e3477"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.1.0/alter-mcp-linux-x64.tar.gz"
      sha256 "9e080ec4e39892d3baccd73bc8d5959d1f6752a7ee36bdb1323ebea115cd1f28"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
