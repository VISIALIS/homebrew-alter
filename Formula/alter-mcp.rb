class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.7/alter-mcp-macos-arm64.tar.gz"
      sha256 "eb7725126d944982cec39872607dd6147731da3c18d551d471e794497a43e22e"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.7/alter-mcp-macos-x64.tar.gz"
      sha256 "387205ebe6bb2b46ccf7e12239303fe5e65238b0452b38c97b0119c60952071f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.7/alter-mcp-linux-arm64.tar.gz"
      sha256 "6a3493f73c3efa2b5451c2825f00f59a9ed456dad78da715d9fd0ee99ae51da3"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.7/alter-mcp-linux-x64.tar.gz"
      sha256 "e9974b1c4e27b94a971de9602abfd78e14038e5a138d32acb7dded75f827f9e2"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
