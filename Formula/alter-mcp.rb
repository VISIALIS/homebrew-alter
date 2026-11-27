class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "2.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v2.0.3/alter-mcp-macos-arm64.tar.gz"
      sha256 "2d714bd1d6e97dc4916fe6e5adebe898c75a6d24fddba78959e60ae96ba71c56"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v2.0.3/alter-mcp-macos-x64.tar.gz"
      sha256 "af89a412560f627a7993254d9db4ea3e97f525486fe5fdebdfa251ca7dd2cf7b"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
