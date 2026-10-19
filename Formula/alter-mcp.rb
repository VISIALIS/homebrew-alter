class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.33.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "7f1ddac44512d4e75c9e9c243b34d164e4410aedddeab5b8bf0b9173ee5467a8"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.33.0/alter-mcp-macos-x64.tar.gz"
      sha256 "b0435e0a4e61c0845daa5586e0218880ba33c15a295bcd90bf44045304c61145"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.33.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "8c4e4c44d6c3de8090768dce8cbc22ca6db8d51a2db5b332619528ad604f0b7b"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.33.0/alter-mcp-linux-x64.tar.gz"
      sha256 "de657d596fefc9ba6a7c3ce62c1be2baf0c1ac819f56bc0ad34f8dc0f4314d0b"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
