class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.3/alter-mcp-macos-arm64.tar.gz"
      sha256 "9a5bacd2ac3d9e47cec67d0822b7a52dd10b8b7dce570359de54976b227b5e8e"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.3/alter-mcp-macos-x64.tar.gz"
      sha256 "523b191c74881247ec92a3f5a51b3bf7be64bb361e4244dca7b309734db38d42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.3/alter-mcp-linux-arm64.tar.gz"
      sha256 "6ad84a5756e949a46f346e5027f0a29fb39e710a7d4bd3262719937561cecafd"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.3/alter-mcp-linux-x64.tar.gz"
      sha256 "40bd4355b4b1b1d44887ff31bf8315d280e721e74015afc87842a5f6d15a734c"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
