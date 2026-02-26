class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.2.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "2f9f264cc3c8fb2d80b2e1bbb95e2500bd5f335972e23196d259cfd885ce94c7"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.2.0/alter-mcp-macos-x64.tar.gz"
      sha256 "7d34195afc00d48b5fe1d5cb6b69248ea2148a3ed1a345c31358a3aed011c6ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.2.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "b3475f516bed19e9b3bf232223057611404ee6d8e9e456f8f7797dd670c4a410"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.2.0/alter-mcp-linux-x64.tar.gz"
      sha256 "abda7dcdcbcb98074f49ec7024b163ab899c2fe4b0a3b89f7d1b9ec579005821"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
