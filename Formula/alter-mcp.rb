class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.37.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "b1ed2a99896f0f1e10da93d6849a68a815566ef466edf83cb06953fa885b533d"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.37.0/alter-mcp-macos-x64.tar.gz"
      sha256 "4c965db41927f70c9b05cc0af60c84563f73e7cafad8b99811bd45270c13e2ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.37.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "39108d8252f28e1240bfb38eaeb53346eaa19b06175069184870108ccf8b1a80"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.37.0/alter-mcp-linux-x64.tar.gz"
      sha256 "f60050ffca2ee926af1b725580cb8a258721a1544da257b369158ee4fa50f52a"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
