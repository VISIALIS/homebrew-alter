class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.1/alter-mcp-macos-arm64.tar.gz"
      sha256 "059c55515fd7ad9f2ac3a2d196622661ce237719019077f8b4ad05dd53fe6c08"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.1/alter-mcp-macos-x64.tar.gz"
      sha256 "f906572228590c70f9c8c9efa8b12b99a6700abd5b59604ae24e39d1b675aaea"
    end
  end

    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.1/alter-mcp-linux-x64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
