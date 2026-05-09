class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.11.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.3/alter-mcp-macos-arm64.tar.gz"
      sha256 "8f9d42e2edb25575d3d2efe31018e2699fe63b2b35c20fdc1c27c2310238c68d"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.3/alter-mcp-macos-x64.tar.gz"
      sha256 "9ffe36c82d3c47e18db590537873093edbe1a6fcf877e539049cc6034c790772"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.3/alter-mcp-linux-arm64.tar.gz"
      sha256 "69564b3b7075f621ff8794cede3fcbbec06162cdd12257f3f0cae0153137c2d6"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.3/alter-mcp-linux-x64.tar.gz"
      sha256 "8de25499280594b4b2f30b5152e225f0ad79b93e79564e38fb554677029bde0e"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
