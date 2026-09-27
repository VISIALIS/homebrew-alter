class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.30.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "2fb9b81ef5143fa65e4a5708fd704bc5645f546272bf35d7ecc49d6111e57015"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.30.0/alter-mcp-macos-x64.tar.gz"
      sha256 "ede9c3c425d22bda742ad5db316b5cce76c211c3d5a7f6e8c2f4bc06a3a10767"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.30.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "3504751082d59475d789f4e669cc0024556c1f6b80c33145195dfc74e88923cf"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.30.0/alter-mcp-linux-x64.tar.gz"
      sha256 "428688fc2aca57ff5c57d2cfc497b587f6e0e5331355dc3421d1c219bf6ee315"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
