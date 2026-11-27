class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "2.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v2.0.4/alter-mcp-macos-arm64.tar.gz"
      sha256 "957031bc9bcb184a5530ea4cd88a32c093e438a445827bed5f028923ee09e536"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v2.0.4/alter-mcp-macos-x64.tar.gz"
      sha256 "32efae82402dc5b7cac6377a6e0afbfa2a748bd4a8e49df28b6901e1dcd63a18"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
