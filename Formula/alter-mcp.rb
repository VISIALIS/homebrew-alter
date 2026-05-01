class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "3343cc2c6df037e7b12edb0d3499d815fa30151be9108a3d699cdc1cfe915bea"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.0/alter-mcp-macos-x64.tar.gz"
      sha256 "d2ba23638ccbad1400c0536192e30df78da200a07d41cdefe184a20ee9d22b8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "1695712cc015c9d08169cf63adbe6c80d6d3d32e2967d99dbbe2f31f658e8591"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.0/alter-mcp-linux-x64.tar.gz"
      sha256 "ee1b02dfa006723c77ef99513c8513652e7201c8185acba93ae1bbc742c9cc3f"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
