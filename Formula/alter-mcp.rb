class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "1ca26fe96c0e0b6f52466c0b747796ab45406f86141c03f85913d37255c32273"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-mcp-macos-x64.tar.gz"
      sha256 "981da5520918b7a88179b078946a4a571a6643fca4ea4b5e7c720a2b2d28e464"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
