class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.2/alter-mcp-macos-arm64.tar.gz"
      sha256 "acd681c7bb6d40a69781fdd0786eaa62ecf1ed06f4a4fc1e1002ac3f63d2bf7f"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.2/alter-mcp-macos-x64.tar.gz"
      sha256 "b3e5f9d3e0110ee38011061670e73372d77fd25903af43c05c0d2aea1d1e5bb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.2/alter-mcp-linux-arm64.tar.gz"
      sha256 "1a7a35d67e4a0a8b30fbad16e7d11fb1813ffc86b4636f42acac25e2b62f274d"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.2/alter-mcp-linux-x64.tar.gz"
      sha256 "f966456df3e871998df25186534e28f8caef4b8b194fd3b32fc834b197ea3774"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
