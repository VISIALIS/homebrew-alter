class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.24.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "749942c8f860dda13de353cd4f2a9da80aa4ac0ca93f525cf079d2641537db83"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.24.0/alter-mcp-macos-x64.tar.gz"
      sha256 "7243454a534d073392d733f0edc6b8c712bfe6010fa122abf4d33e416d7f5ffd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.24.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "14df4ae34b172a6877665aeab9daad07f4f8e92460f9510bf0463527d6fa96e2"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.24.0/alter-mcp-linux-x64.tar.gz"
      sha256 "29cad67e20be42bc287f26db1dac5072bfb0e48084cdef6141ceeebfbaecf17f"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
