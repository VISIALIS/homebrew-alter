class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.52/alter-mcp-macos-arm64.tar.gz"
      sha256 "33fb9da7eacf0f6ba2c165c1d3236488c10891bd36c002467c9d47ebc65f337b"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.52/alter-mcp-macos-x64.tar.gz"
      sha256 "b36c5ecf5b8cda4b9100fc39d9c75f2c4f8ac9da5876e54916f9fa4863b70bfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.52/alter-mcp-linux-arm64.tar.gz"
      sha256 "ea3a0cd60c0fca13c9059603f5f45d7860f643c22591e702b0a1d3fdbc479d77"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.52/alter-mcp-linux-x64.tar.gz"
      sha256 "46f992ffdf4ec17ff18791d89dfd60b0fc64dded2869377f6b3c2790e1d17852"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
