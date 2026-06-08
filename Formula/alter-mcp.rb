class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.16.0/alter-mcp-1.16.0-macos-arm64.tar.gz"
      sha256 "6a409217bc732740722390dcd1db061caea9deffb5ce1dd31ef1979062ba61e7"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.16.0/alter-mcp-1.16.0-macos-x64.tar.gz"
      sha256 "49a2d404fbed789361d31efd5ec3da667238290b71fa3268742a5d4f45d5c68e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.16.0/alter-mcp-1.16.0-linux-arm64.tar.gz"
      sha256 "4231b00c7b1075dfa571bc4018405260f8bfa41c631bfa77060558e3f7be49c7"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.16.0/alter-mcp-1.16.0-linux-x64.tar.gz"
      sha256 "212fcbdff35b7e789e322d11008b37434da57d423527554430c6374b80d35c41"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
