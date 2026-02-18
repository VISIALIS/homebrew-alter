class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.53/alter-mcp-macos-arm64.tar.gz"
      sha256 "93b3b6653aee697c6ae906617a791a3be4c4b1e1eb3686a61e8e7757c5091603"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.53/alter-mcp-macos-x64.tar.gz"
      sha256 "60bb7546ec63391f4c9e2ba23cef41644b2e8c2c703664999e452071222f161e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.53/alter-mcp-linux-arm64.tar.gz"
      sha256 "45aa62bc316ee3ee5feafca5dc244f54caaee7dbe693f9de265d659b65ee8c38"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.53/alter-mcp-linux-x64.tar.gz"
      sha256 "8848d4a7587c9c44b2c9c5cbd507c6baf379ce25dbc68496faaab8bea4a97456"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
