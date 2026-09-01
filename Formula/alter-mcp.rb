class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.1/alter-mcp-macos-arm64.tar.gz"
      sha256 "f22904628b6c3d311ed9b2cdc05d8b6208b07773a9d1ab0a054cd3264072c847"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.1/alter-mcp-macos-x64.tar.gz"
      sha256 "b7ad5a956ab4109d606e636d4a258d4e33d6d2f7aa686ea00b0d0aee435a681a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.1/alter-mcp-linux-arm64.tar.gz"
      sha256 "a4b1be8bbf783cb7b7f28c6aec6516d649273307934c566ec3ffc86799f73bc9"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.26.1/alter-mcp-linux-x64.tar.gz"
      sha256 "6a350fdec150dd5aea1b839f7628ca5ed257ebbf323360c6f89ae851adbcbb35"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
