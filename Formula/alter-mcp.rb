class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.38.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "4310386c0fdfd576f66768a33b0586153b7e691e3b0954fbe132fb6dc74c9a55"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.38.0/alter-mcp-macos-x64.tar.gz"
      sha256 "acededb9f64f8ded2aa3de880106304827a297ab304749f4121d0bb77ab0c9eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.38.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "8b086d0b58593eeb354d2f1af6925107992285c469192195c4ac87a137f60e49"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.38.0/alter-mcp-linux-x64.tar.gz"
      sha256 "3f1176be3241f6832d123beb2d2ab389a91003b03d2216db80a09fb96a1cc4d3"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
