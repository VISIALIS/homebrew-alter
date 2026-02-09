class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.43/alter-mcp-macos-arm64.tar.gz"
      sha256 "d0068a53a60a52a60bbe14c5248eeede0d8c98d007a6db8f5aa6392a54fcd031"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.43/alter-mcp-macos-x64.tar.gz"
      sha256 "4232e298196f54174b923f8c648aac8ca9c2865a857c32e4a69d3dcd41ae94d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.43/alter-mcp-linux-arm64.tar.gz"
      sha256 "7ecf85a4c0f14c93972ce88baefe451e6e980372bc7091494d38e0dc29e839c6"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.43/alter-mcp-linux-x64.tar.gz"
      sha256 "f896882d99479c6bd458450ae38798cb1a7d742c042c8a7c300bf0bd9968b92a"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
