class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.34.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "60ce2d40ff217e61a03bfc8379975df1354d8975b547244f6c09d2da573778d0"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.34.0/alter-mcp-macos-x64.tar.gz"
      sha256 "275b85ee3d5a7c4885f19992002ad04b658758a99824b3fb409b1f32dc93d85b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.34.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "beea09d73bbb95d051574098ef2779207e9b15e09534f19148684b8dccdf09aa"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.34.0/alter-mcp-linux-x64.tar.gz"
      sha256 "c3d0df1d3298d72b0ba3e8188bf3ddc155912a090d74cbc1d1b2ad0a54dabd45"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
