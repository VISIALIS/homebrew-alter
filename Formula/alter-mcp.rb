class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.48/alter-mcp-macos-arm64.tar.gz"
      sha256 "d5e78a93dc14126be1a4c7dd0c4a7fdb6e3c2360f2ab5669095ed2d7fbda9067"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.48/alter-mcp-macos-x64.tar.gz"
      sha256 "00911fa3c53033c4d7cfec9ea42a5fbb86125c43ab91697048b821466e481d52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.48/alter-mcp-linux-arm64.tar.gz"
      sha256 "09ffbee3fc6259afce207676edc300360c80dc9926a9f0093f77c9d4cb7db098"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.48/alter-mcp-linux-x64.tar.gz"
      sha256 "5b5a82c01fe2f095de3603bf0c2daa61d1cb0a07b88a7db3baa84a07851085e4"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
