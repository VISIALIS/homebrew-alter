class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-mcp-macos-arm64.tar.gz"
      sha256 "9dbce4198a37e861c42104012a541974281d452ca5b4e177d03fc12ca9d32de3"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-mcp-macos-x64.tar.gz"
      sha256 "70357374ab392e6367a4cd261ecec102ce06e0e8b78a0ff7aed4d143cc2933d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-mcp-linux-arm64.tar.gz"
      sha256 "a7911bcf104e2b5728978f84f80afaf8c142a8364b790c8208030983a17b950d"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.40/alter-mcp-linux-x64.tar.gz"
      sha256 "ab19479b1d5fa131152cfec8a6dc33c9a8e914f70d97c362c0bb2933726e4296"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
