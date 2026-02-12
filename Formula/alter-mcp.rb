class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-mcp-macos-arm64.tar.gz"
      sha256 "5decf7d1e8eac30b596bce835b2f1a2ca1bffee37f8a4ecf4932ea6ca7595d6e"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-mcp-macos-x64.tar.gz"
      sha256 "68f8f901feb20713c9b3f8c402a771dae4d0be16db46853beb21bc6aeae0e6fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-mcp-linux-arm64.tar.gz"
      sha256 "98ed82234a78e1e7ee1eaac8b1b25909b1e38bdc182f182381b28616a12980f2"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.47/alter-mcp-linux-x64.tar.gz"
      sha256 "3745fa0e11c2722cf0c6ea6d4599c0e49f60afe64a7b6ec158cb82fc010e7f47"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
