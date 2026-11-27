class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v2.0.1/alter-mcp-macos-arm64.tar.gz"
      sha256 "d89a6318da6c64449e6563ae77e11dd0b3279174b52a251cfae5dc9edf6b6aac"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v2.0.1/alter-mcp-macos-x64.tar.gz"
      sha256 "288f2fe36a6ee2a3985c405d885ff3c211ca00f211465aa3039a594309805b4b"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
