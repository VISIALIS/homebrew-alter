class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.28.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "6ab37246c08c6b5f966abf73411ea93ce8e405bfc8f06d4e4fa90085736738fc"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.28.0/alter-mcp-macos-x64.tar.gz"
      sha256 "d67108977c123c32861797bc3342d1b9fa878383117808ef25deaabbff5ddbf3"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
