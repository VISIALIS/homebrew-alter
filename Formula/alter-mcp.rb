class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.18.1/alter-mcp-macos-arm64.tar.gz"
      sha256 "6c7396b72ee288a3c5ac5913f02202fc261b719307fc5c392e03607dcfd54f99"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.18.1/alter-mcp-macos-x64.tar.gz"
      sha256 "1bbc104538b2340e872efb253af9a8919e6c942437c855a9cac4655e7c687b87"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
