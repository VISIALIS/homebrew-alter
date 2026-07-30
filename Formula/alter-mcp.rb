class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.25.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "ad962bf3b9d472f013b9b81ceac2221e97ac0d422bb918eb88fa7078b7fd5d80"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.25.0/alter-mcp-macos-x64.tar.gz"
      sha256 "362f18556099f24e14fc24b58ffd7b3d2ef8da5966abd68ce2c43a1617d4b8db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.25.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "c67ed89d4102a514ff9d3dfd51db1406e9b1b5348be862086961419006ce74bb"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.25.0/alter-mcp-linux-x64.tar.gz"
      sha256 "fa85aa7c57c06b60e26eae5ebfc9ecd447f176d688450ce64428a7039768b828"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
