class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v2.0.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "4eafcb9f88ac01d7f845e8b69239b713faf258670ea1d82984c6e18918224454"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v2.0.0/alter-mcp-macos-x64.tar.gz"
      sha256 "3350a9b7a33de9346a56c30f672b596cb991a659ed0ca04af78878ff30648fd3"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
