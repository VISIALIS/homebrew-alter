class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.31.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.1/alter-mcp-macos-arm64.tar.gz"
      sha256 "bc30a01c2bdbaa8aa7fd632730fee4c1e2c25b429b4962287293b3dc3687dff9"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.1/alter-mcp-macos-x64.tar.gz"
      sha256 "01526578709d20e13caa5f5afed407e19a15985dad64a9902b6feb1be5dc70b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.1/alter-mcp-linux-arm64.tar.gz"
      sha256 "dc15780a0b84babcc2f673b0e6704a9e8c6e6b883186524e1238d25da8a25dc4"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.31.1/alter-mcp-linux-x64.tar.gz"
      sha256 "c9adf1d5794dc20de09af8f1672f1581942b73b437c5ce7bfe628af46b6fc204"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
