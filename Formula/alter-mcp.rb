class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.40.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "9ff6bf495e8e46f25960bf425000e444a6c68364ae19a6f7837292c0a98e2ac5"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.40.0/alter-mcp-macos-x64.tar.gz"
      sha256 "46186aa58266493659c88119c4e129a8e9582dbc07adf4c45f9c5bce7e04623b"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
