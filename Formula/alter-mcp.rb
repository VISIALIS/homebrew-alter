class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.2/alter-mcp-macos-arm64.tar.gz"
      sha256 "80d6a0434f4d662664596a9cb91a10884d197c56c2d99fd447969146cd311c67"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.2/alter-mcp-macos-x64.tar.gz"
      sha256 "d969dfb6314be4d4458ca337b9a25e3268690fdb3e849dc82c37dc42c656c620"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.2/alter-mcp-linux-arm64.tar.gz"
      sha256 "197deb2b0f28008bd03787975c6a0064be4993bedfc568e99a9846ceae32a277"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.2/alter-mcp-linux-x64.tar.gz"
      sha256 "0f47e3212f8e6d1315605f42997298303e1c95f5dd5caef58182ecdfa31645e6"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
