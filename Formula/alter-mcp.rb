class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.42/alter-mcp-macos-arm64.tar.gz"
      sha256 "2542b48a4f69a5a825d6cc3923e984424abcca5163b353fa39912b6ce4cd0cd3"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.42/alter-mcp-macos-x64.tar.gz"
      sha256 "a310242bed628e4f9bf748dd33c1daccb776eccd8c07f24d900b0a86dc5eaeb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.42/alter-mcp-linux-arm64.tar.gz"
      sha256 "55759f3e8c95bc4c5b8d980a38cb0c40fe8f6742a902fa7d818d42e22cdebd19"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.42/alter-mcp-linux-x64.tar.gz"
      sha256 "bd9df6064d3b493260859bdd74d6622220cbcb51fbf501c4a17b3a1c9f36ebda"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
