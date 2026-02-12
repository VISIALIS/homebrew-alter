class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.46/alter-mcp-macos-arm64.tar.gz"
      sha256 "c2647d3b7cf7a952b21f3fbb81415fdb2d6658893b45e75a4c5f4b7eb2029d05"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.46/alter-mcp-macos-x64.tar.gz"
      sha256 "1471f3b17ea7b8f8798b207f8ea7ba16887f1cc35bd6a69ef2aa1c95af9c228d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.46/alter-mcp-linux-arm64.tar.gz"
      sha256 "22652db9b0c0cab85806803c71be51d1434b480cce196aceeb937a34d1ed7152"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.46/alter-mcp-linux-x64.tar.gz"
      sha256 "feb5607deddd114c53147dfd48491e4a6316a777eca71900d92aa5a15c8eb556"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
