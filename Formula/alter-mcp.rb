class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "6ba857cab9edbe233c809991d92174332e27b43477f706538dab58eaf80ebc8a"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.0/alter-mcp-macos-x64.tar.gz"
      sha256 "cc22914f8ff1b52f2cd1e751723b3fbbb08e8da6437ddbcc74e530404265953e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "7e7cdd662e9d146d1960365529b56bd26a61b169228ffda2cf1221617e2d43b8"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.0/alter-mcp-linux-x64.tar.gz"
      sha256 "b6d9c6a1f440fd12efeeb3cf2ddcca83c7c05d6cb4cb4fef1b8c3ba92bcef292"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
