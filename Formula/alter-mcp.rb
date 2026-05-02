class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.3/alter-mcp-macos-arm64.tar.gz"
      sha256 "d39c5ad726384c9d836afb299dbb3ccce358b9844d02aea9138afbb75c3c4af6"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.3/alter-mcp-macos-x64.tar.gz"
      sha256 "8ae3af9fc842f4fcbc052d00a516fb0269d460bbbedc7d32679adc4eaf6e61a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.3/alter-mcp-linux-arm64.tar.gz"
      sha256 "b3a2b123d9131ab219cda81f1a5de305e191400045b773fee24d4c1b74a7cd40"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.3/alter-mcp-linux-x64.tar.gz"
      sha256 "b06ae70e92ea6e2c4b87e8574c14af9452a1f99be875ec226ec288d290c7db0b"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
