class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "963dfb6e5ab81d0689381e54f378828d3ab802666271452ea8731659dd67888c"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.0/alter-mcp-macos-x64.tar.gz"
      sha256 "b17a7c9b83094cb0d7fd3b91339528feb7535a689da3fd6c65afe1b711ef545b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "3276714c3a6b198348442cfbf28d0db19d64cffc75fb1ddbcf6497e43119c0e9"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.0/alter-mcp-linux-x64.tar.gz"
      sha256 "fa87635498e8d4316f12b2dec33178db8c25f010f6fc7949552190871946edd3"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
