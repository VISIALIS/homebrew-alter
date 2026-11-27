class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "2.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v2.0.2/alter-mcp-macos-arm64.tar.gz"
      sha256 "1c2428ff46113dc7d7ef3f8e2f0a5a3a005fce1c705303ae8a7d68fc89ca5e0d"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v2.0.2/alter-mcp-macos-x64.tar.gz"
      sha256 "98a86a64cc6692e487d22671057f274fd8bd0de58abf540c6073ee3351776559"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
