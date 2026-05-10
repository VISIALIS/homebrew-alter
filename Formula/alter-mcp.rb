class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.12.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "0ce8ff1482576bc86dc49d095855908ba7d1f7bacd69fe7aa3a41cb45cd04ddd"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.12.0/alter-mcp-macos-x64.tar.gz"
      sha256 "9e979889a3fde174526286043f24ad11d11c3ddb47c903a8493b6daa58c32752"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.12.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "244bae0f7663035d8dacc7719214f01ef3dfc2dffeaf8a1c928be92fa278d500"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.12.0/alter-mcp-linux-x64.tar.gz"
      sha256 "a0bf953cd6ae9e9c3449df80e532da164e18c80847a957c398033401caa6b0f5"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
