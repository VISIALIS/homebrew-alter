class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.5.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "9eac95f2bd0e0cd3344cb790cfafa8044d328853d1789c38ce825cf213012c7f"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.5.0/alter-mcp-macos-x64.tar.gz"
      sha256 "0fedc6dc4f2cf697a570f4001c484b1c99b4dff703ca90a4159c12a76f07fd40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.5.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "7cfa8a3d332e3ae03b381204788ca893aacbada97d4cfd97dca4092aa83ce288"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.5.0/alter-mcp-linux-x64.tar.gz"
      sha256 "42e67731c000110d9fce4a41940b7dba8bcd8923cc71e3b53da3bdaf4dbcedd5"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
