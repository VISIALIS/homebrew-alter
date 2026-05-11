class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.2/alter-mcp-macos-arm64.tar.gz"
      sha256 "6ae76c2606ae446241ba97c1f179405b765b2dc0e5e13e77fe03c33b85ba11b3"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.2/alter-mcp-macos-x64.tar.gz"
      sha256 "7ba24bb62985a12b951162a9f9931921d2b31f7a8c930e69e0a41da727a450fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.2/alter-mcp-linux-arm64.tar.gz"
      sha256 "63e11043b371f3a2c954dc825d5e89fa12d5e03a4c9a6108c08e69250769dc39"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.2/alter-mcp-linux-x64.tar.gz"
      sha256 "470e58521d1f3f728c4bc63308083be15342a6aec421d7ab9f88a645cdca1428"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
