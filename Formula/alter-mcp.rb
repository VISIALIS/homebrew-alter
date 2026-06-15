class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.0/alter-mcp-1.17.0-macos-arm64.tar.gz"
      sha256 "bad9712483448ebca802ed31d486ad7bb5e5fc7491643e62ce67fc61a97d5e00"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.0/alter-mcp-1.17.0-macos-x64.tar.gz"
      sha256 "308964167c801f75bcf4e4cf45d37417cb5b46376260c21f855c472ae870a26c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.0/alter-mcp-1.17.0-linux-arm64.tar.gz"
      sha256 "d9bc8b7dd4281cb28c0eba0e6dd54d6cd577bb64058233baa6139686ea2ae0fe"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.0/alter-mcp-1.17.0-linux-x64.tar.gz"
      sha256 "1e6eefba888d76e73b584c063d95c5892f47e8d96008007fee9a66d54dad291b"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
