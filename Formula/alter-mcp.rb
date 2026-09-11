class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.29.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "26e2d7e717068c8dbf32dc9e5e7c876f0def30da9735818a8f303f858409fa83"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.29.0/alter-mcp-macos-x64.tar.gz"
      sha256 "10e667134ccc8ed089d35b1f4fe0d008c302084f937499ba5f5bb3a2279f1ec6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.29.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "4db30294dec2bbdaa409cadbdfed1c2b0774e8ba96df2bab7c1027d5e8897c58"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.29.0/alter-mcp-linux-x64.tar.gz"
      sha256 "d9c5356097b540c953df154abae54453928ffe9a088ab7c93d7b37534a1f44f1"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
