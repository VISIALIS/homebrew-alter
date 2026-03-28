class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.7.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "f02bc8264ce9127ce834a8413e83d2bc46dbf5c1741abedd03593dec757e7b06"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.7.0/alter-mcp-macos-x64.tar.gz"
      sha256 "8ba3641f314a4289b18774e8bafca3f79be8efa82e96a3966fd9d7700ead5418"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.7.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "15b500b81bdeacb781e421184c33b34e14f18ff641522af1f460d06a59e082c3"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.7.0/alter-mcp-linux-x64.tar.gz"
      sha256 "a50b4564816c66291fe74b51f70ab621734123397de591f88693711b422e2810"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
