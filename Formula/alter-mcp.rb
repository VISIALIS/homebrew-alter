class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.39/alter-mcp-macos-arm64.tar.gz"
      sha256 "6d3f824625b791649c85cb63d01fdcf2760df7fdfd65537050ae6264df682c08"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.39/alter-mcp-macos-x64.tar.gz"
      sha256 "7b72e8f79e93283939f390d818749d2d02989a412db131d769156fc2ad5426d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.39/alter-mcp-linux-arm64.tar.gz"
      sha256 "8481f36e2a2f6a45eef10fd240fce39db8fd36e9b10ce7e1dcdb3132f6397cd4"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.39/alter-mcp-linux-x64.tar.gz"
      sha256 "454303d81d584fc0c6c34b327daf49230c5d42ef8ec28c98f2f6bf1a1280acbc"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
