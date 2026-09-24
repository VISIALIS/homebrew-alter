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
      sha256 "eda96b113157b0c6ce4e518eec7f98239f9a41e3a802612685e8c0fce3e87110"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.30.0/alter-mcp-linux-x64.tar.gz"
      sha256 "83e781a00dc1b87f7b9a9d532907310bbbc7f1250ef7bcf0a7cbf31274eb0a2a"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
