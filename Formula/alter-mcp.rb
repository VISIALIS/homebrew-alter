class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.35.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "a392dd2cc88187bb1e5426b0163ee751978c338bd905aef509dd48f774d7fe61"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.35.0/alter-mcp-macos-x64.tar.gz"
      sha256 "58af03856539d91a72bb291a8dc9900da533ba34c3cfc547edecdb0d7472685e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.35.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "8f349bd08f144a12f519fd8d107ab8d0572bc422ab433ae3f02153eed6714e28"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.35.0/alter-mcp-linux-x64.tar.gz"
      sha256 "df3f4a0e62c75cad658a09ae24fac2487e44cbbdd9f02883cced04219de9e8f4"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
