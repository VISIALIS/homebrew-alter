class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.1/alter-mcp-macos-arm64.tar.gz"
      sha256 "f7814fa9cb59384c5f3cbf37e10b7561013ec429124fb4158903e4b0c70e79b8"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.1/alter-mcp-macos-x64.tar.gz"
      sha256 "2752b598116afd4362b6dbfef70a6ce0915551ddd18fcef59e49287c32deef99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.1/alter-mcp-linux-arm64.tar.gz"
      sha256 "ca01200c64c1c1307f0f7036908f80a5a419c6dc3be9dbceda9e8dac505323ad"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.1/alter-mcp-linux-x64.tar.gz"
      sha256 "6b149ba9caeb1bb579a9e21a52541ddb1c7223eb1b82ee9cc70b68c7f49bc844"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
